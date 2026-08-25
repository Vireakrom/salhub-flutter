import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:salhub/models/user.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();

  Future<String?> signIn({
    required String email,
    required String password,
  }) async {
    UserCredential userCredential = await firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password);

    DocumentSnapshot userDoc = await FirebaseFirestore.instance
        .collection('users')
        .doc(userCredential.user!.uid)
        .get();
    if (userDoc.exists == false) {
      signOut();
    }

    return userDoc['role'];
  }

  Future<bool> isAdmin() async {
    DocumentSnapshot userDoc = await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser!.uid)
        .get();

    if (userDoc['role'] == 'admin') {
      return true;
    } else {
      return false;
    }
  }

  Future<UserCredential> createAccount({
    required String email,
    required String password,
    required String username,
    String? role,
  }) async {
    UserCredential credential = await firebaseAuth
        .createUserWithEmailAndPassword(
          email: email.trim(),
          password: password.trim(),
        );

    await FirebaseFirestore.instance
        .collection('users')
        .doc(credential.user!.uid)
        .set({
          'name': username.trim(),
          'email': email.trim(),
          'role': role ?? 'user',
        });

    User? user = credential.user;
    if (user != null) await user.updateDisplayName(username);
    return credential;
  }

  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  Future<void> resetPassword({required String email}) async {
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }

  Future<void> updateUsername({required String username}) async {
    await currentUser!.updateDisplayName(username);
  }

  Future<void> deleteAccount({
    required String email,
    required String password,
  }) async {
    AuthCredential credential = EmailAuthProvider.credential(
      email: email,
      password: password,
    );
    await currentUser!.reauthenticateWithCredential(credential);
    await currentUser!.delete();
    await firebaseAuth.signOut();
  }

  Future<void> resetPasswordFromCurrentPassword({
    required String currentPassword,
    required String newPassword,
    required String email,
  }) async {
    AuthCredential credential = EmailAuthProvider.credential(
      email: email,
      password: currentPassword,
    );

    await currentUser!.reauthenticateWithCredential(credential);
    await currentUser!.updatePassword(newPassword);
  }

  Future<List<UserModel>> fetchUsersCollection() async {
    try {
      final collectionRef = FirebaseFirestore.instance
          .collection('users')
          .withConverter<UserModel>(
            fromFirestore: UserModel.fromFirestore,
            toFirestore: (user, _) => user.toFirestore(),
          );

      QuerySnapshot<UserModel> querySnapshot = await collectionRef.get();

      List<UserModel> usersList = querySnapshot.docs
          .map((doc) => doc.data())
          .toList();
      usersList = usersList
          .where((user) => user.id != currentUser!.uid)
          .toList();
      return usersList;
    } catch (e) {
      return [];
    }
  }

  Future<int> fetchTotalUsers() async {
    try {
      final collectionRef = FirebaseFirestore.instance
          .collection('users')
          .withConverter<UserModel>(
            fromFirestore: UserModel.fromFirestore,
            toFirestore: (user, _) => user.toFirestore(),
          );

      QuerySnapshot<UserModel> querySnapshot = await collectionRef.get();

      List<UserModel> usersList = querySnapshot.docs
          .map((doc) => doc.data())
          .toList();

      return usersList.length;
    } catch (e) {
      return 0;
    }
  }

  Future<void> updateUserRole(String userId, String newRole) async {
    try {
      if (newRole != 'admin' && newRole != 'user') {
        throw Exception("Invalid role assignment.");
      }

      await FirebaseFirestore.instance.collection('users').doc(userId).update({
        'role': newRole,
      });

      print("User role updated to $newRole successfully.");
    } catch (e) {
      print("Failed to update user role: $e");
      rethrow;
    }
  }
}

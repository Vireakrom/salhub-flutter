import 'package:cloud_firestore/cloud_firestore.dart';

class UserFirebaseModel {
  final String id;
  final String name;
  final String email;
  final String role;

  UserFirebaseModel({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
  });

  factory UserFirebaseModel.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return UserFirebaseModel(
      id: snapshot.id,
      name: data?['name'] ?? '',
      email: data?['email'] ?? '',
      role: data?['role'] ?? '',
    );
  }

  Map<String, dynamic> toFirestore() {
    return {'name': name, 'email': email, 'role': role};
  }
}

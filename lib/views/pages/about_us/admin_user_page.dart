import 'package:flutter/material.dart';
import 'package:salhub/views/pages/general_culture/general_culture_page.dart';
import 'package:salhub/views/pages/grammar/grammar_page.dart';
import 'package:salhub/views/pages/jomrous/jomrous_page.dart';
import 'package:salhub/views/pages/lomhat_page/lomhat_page.dart';
import 'package:salhub/views/pages/rean_peasa/rean_peasa_page.dart';

class AdminUserPage extends StatefulWidget {
  const AdminUserPage({super.key});

  @override
  State<AdminUserPage> createState() => _AdminUserPageState();
}

class _AdminUserPageState extends State<AdminUserPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  String _selectedRole = 'admin';
  List _admins = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
  }

  void _showAddAdminModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: const Color(0xFFFEFBF3),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 24,
          bottom: MediaQuery.of(context).viewInsets.bottom + 24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'បន្ថែម Admin ថ្មី',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF4A3E3D)),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'ឈ្មោះ (Name)',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'អ៊ីមែល (Email)',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFB74D),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () async {
                  if (_nameController.text.isNotEmpty && _emailController.text.isNotEmpty) {
                    _nameController.clear();
                    _emailController.clear();
                    if (mounted) Navigator.pop(context);
                  }
                },
                child: const Text('រក្សាទុក (Save)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFBF3),
      appBar: AppBar(
        title: const Text('គ្រប់គ្រង Admin Users', style: TextStyle(color: Color(0xFF4A3E3D))),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF4A3E3D)),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showAddAdminModal,
        backgroundColor: const Color(0xFFFFB74D),
        icon: const Icon(Icons.person_add, color: Colors.white),
        label: const Text('បន្ថែម Admin', style: TextStyle(color: Colors.white)),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _admins.length,
              itemBuilder: (context, index) {
                final admin = _admins[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: const Color(0xFFFFB74D).withOpacity(0.2),
                      child: Text(admin.name[0].toUpperCase(), style: const TextStyle(color: Color(0xFF4A3E3D))),
                    ),
                    title: Text(admin.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(admin.email),
                    trailing: Chip(
                      label: Text(admin.role, style: const TextStyle(fontSize: 12, color: Colors.white)),
                      backgroundColor: const Color(0xFF558B2F),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
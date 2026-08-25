import 'package:flutter/material.dart';
import 'package:salhub/models/user.dart';

class AdminTableRow extends StatelessWidget {
  final UserModel user;
  final List<String> availableRoles;
  final ValueChanged<String> onRoleChanged;
  final VoidCallback onRevoke;

  const AdminTableRow({
    super.key,
    required this.user,
    required this.availableRoles,
    required this.onRoleChanged,
    required this.onRevoke,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      decoration: const BoxDecoration(
        color: Color(0xFFFDF2E2),
        border: Border(bottom: BorderSide(color: Color(0xFFEFE2CB), width: 1)),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              user.id,

              textAlign: TextAlign.center,
              maxLines: 1,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Color(0xFF5A3E2B)),
            ),
          ),
          // Name
          Expanded(
            flex: 2,
            child: Text(
              user.name,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Color(0xFF5A3E2B)),
            ),
          ),
          // Email
          Expanded(
            flex: 4,
            child: Text(
              user.email,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Color(0xFF5A3E2B), fontSize: 12),
            ),
          ),

          // Role Dropdown
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: const Color(0xFFF0E5D8),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFD3C2B0)),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: availableRoles.contains(user.role)
                      ? user.role
                      : availableRoles.first,
                  isExpanded: true,
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Color(0xFF5A3E2B),
                  ),
                  style: const TextStyle(
                    color: Color(0xFF3D291A),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                  onChanged: (String? newRole) {
                    if (newRole != null) onRoleChanged(newRole);
                  },
                  items: availableRoles.map<DropdownMenuItem<String>>((
                    String role,
                  ) {
                    return DropdownMenuItem<String>(
                      value: role,
                      child: Text(role),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),

          // Action Buttons
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 6),
                InkWell(
                  onTap: onRevoke,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFAD3D0),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: const Color(0xFFE8A39E)),
                    ),
                    child: const Text(
                      'Delete',
                      style: TextStyle(
                        color: Color(0xFFB73229),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

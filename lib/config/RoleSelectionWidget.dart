import 'package:flutter/material.dart';

class RoleSelectionWidget extends StatefulWidget {
  const RoleSelectionWidget({Key? key, required this.onRoleSelected})
      : super(key: key);

  final Function(String) onRoleSelected;

  @override
  _RoleSelectionWidgetState createState() => _RoleSelectionWidgetState();
}

class _RoleSelectionWidgetState extends State<RoleSelectionWidget> {
  String selectedRole = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(15),
              ),
            ),
            builder: (BuildContext context) {
              return SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    String role_name =
                        index == 0 ? 'Admin' : 'Employee/Lecturer';

                    return Column(
                      children: [
                        ListTile(
                          title: Text(
                            role_name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle: Text(
                            role_name == 'Admin'
                                ? 'BINUS University'
                                : 'BINUS University',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              selectedRole = role_name;
                            });
                            widget.onRoleSelected(selectedRole);
                            Navigator.pop(context);
                          },
                        ),
                        if (index == 0)
                          Container(
                            width: 360,
                            height: 2,
                            color: Colors.grey[200],
                          ),
                      ],
                    );
                  },
                ),
              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          minimumSize: const Size(210, 35),
          alignment: Alignment.centerLeft,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        child: Container(
          width: 180,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      selectedRole.isNotEmpty ? selectedRole : 'Choose Role...',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey[600],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String icanPath;
  const MyTab({super.key, required this.icanPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
        height: 80,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12)),
          child: Image.asset(
            icanPath,
            color: Colors.grey.shade600,
          ),
        ));
  }
}

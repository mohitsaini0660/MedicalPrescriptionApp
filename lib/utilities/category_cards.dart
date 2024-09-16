import 'package:flutter/material.dart';

class CategoryCards extends StatelessWidget {
  final icon;
  final String categoryName;

  CategoryCards({required this.categoryName, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              icon,
              height: 40,
            ),
            SizedBox(
              width: 20,
            ),
            Text(categoryName)
          ],
        ),
      ),
    );
  }
}

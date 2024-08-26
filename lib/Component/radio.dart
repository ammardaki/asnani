import 'package:flutter/material.dart';

class radio extends StatelessWidget {
  final String gender;
  final IconData? icon;
  const radio({super.key, required this.gender, required this.icon});

  @override
  Widget build(BuildContext context) {
 
    return Expanded(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(14.0),
                // border: Border.all(color: Colors.indigo),
              ),
              height: 60,
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon),
                  Text(
                    gender,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

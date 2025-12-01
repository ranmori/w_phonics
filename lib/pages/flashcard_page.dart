import 'package:flutter/material.dart';

class FlashcardPage extends StatelessWidget {
  const FlashcardPage({super.key, required this.phonicChar});
  final String phonicChar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(24),
                  ),
      
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Text(
                      phonicChar,
                      style: TextStyle(
                        fontSize: 105,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
    );
  }
}
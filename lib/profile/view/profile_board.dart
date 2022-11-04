import 'package:flutter/material.dart';

class ProfileBoard extends StatelessWidget {
  const ProfileBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(78, 230, 224, 224),
        borderRadius: BorderRadius.circular(20),
      

      ),
      child: Image.asset("assets/images/me2.png",
      fit: BoxFit.cover,),
      
    );
  }
}
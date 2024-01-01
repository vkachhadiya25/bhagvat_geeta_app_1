import 'package:bhagvat_geeta_app/utils/colors.dart';
import 'package:flutter/material.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, 'home');
    });
    return  SafeArea(
      child: Scaffold(
       body: const Center(
         child: CircleAvatar(
           maxRadius: 80,
           backgroundImage: AssetImage("assets/image/gita.jpeg",),
         ),
       ),
        backgroundColor: black,
     ),
    );
  }
}

import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text('No Leave Requests',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.grey),),
      ),
    );
  }
}

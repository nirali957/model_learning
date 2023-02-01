import 'package:flutter/material.dart';

class EpisodeCallingScreen extends StatefulWidget {
  const EpisodeCallingScreen({Key? key}) : super(key: key);

  @override
  State<EpisodeCallingScreen> createState() => _EpisodeCallingScreenState();
}

class _EpisodeCallingScreenState extends State<EpisodeCallingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text('episode')],
      ),
    );
  }
}

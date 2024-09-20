import 'package:audioplayers/audioplayers.dart';
import 'package:colorcard/pages/colors.dart';
import 'package:flutter/material.dart';

class ColorDetails extends StatefulWidget {
  final String path;
  final Color color;
  final String namecolor;
  const ColorDetails(
      {super.key,
      required this.namecolor,
      required this.color,
      required this.path});

  @override
  State<ColorDetails> createState() => _ColorDetailsState();
}

class _ColorDetailsState extends State<ColorDetails> {
  //  AudioPlayer audioPlayer = AudioPlayer();
  // bool isPlaying = false;
  final player = AudioPlayer();
  void playsound() async {
    String audiopath = widget.path;
    await player.play(AssetSource(audiopath));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 300,
          color: widget.color,
        ),
        Center(
            child: Text(
          widget.namecolor,
          style: const TextStyle(fontSize: 40),
        )),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(widget.color)
          ),
            onPressed: () {
              playsound();
            },
            child:  Text("Click Here",style: TextStyle(color: Colors.grey[200],fontWeight: FontWeight.bold),)),
      ]),
    );
  }
}

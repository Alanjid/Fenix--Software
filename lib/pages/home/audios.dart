import 'package:flutter/material.dart';
import 'package:soundpool/soundpool.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class AutoPlayAudioWidget extends StatefulWidget {
  final String audioPath;

  AutoPlayAudioWidget({required this.audioPath});

  @override
  _AutoPlayAudioWidgetState createState() => _AutoPlayAudioWidgetState();
}

class _AutoPlayAudioWidgetState extends State<AutoPlayAudioWidget> {
  late Soundpool soundpool;
  late int soundId;
  late Timer audioTimer;

  @override
  void initState() {
    super.initState();
    soundpool = Soundpool();
    loadAudio();
    startAudioTimer();
  }

  Future<void> loadAudio() async {
    ByteData data = await rootBundle.load(widget.audioPath);
    soundId = await soundpool.load(data);
  }

  void startAudioTimer() {
    const audioInterval = Duration(seconds: 5);
    audioTimer = Timer.periodic(audioInterval, (Timer timer) {
      playAudio();
    });
  }

  Future<void> playAudio() async {
    soundpool.play(soundId);
  }

  @override
  void dispose() {
    soundpool.release();
    audioTimer.cancel(); // Detener el temporizador al finalizar
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(); // No devuelve nada en el Scaffold
  }
}

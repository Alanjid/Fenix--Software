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

class _AutoPlayAudioWidgetState extends State<AutoPlayAudioWidget> with WidgetsBindingObserver {
  late Soundpool soundpool;
  int? soundId;
  late Timer audioTimer;

  @override
  void initState() {
    super.initState();
    soundpool = Soundpool();
    loadAudio();
    startAudioTimer();
    WidgetsBinding.instance.addObserver(this); // Agregar el observador
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
    if (soundId != null) {
      soundpool.play(soundId!);
    }
  }

  @override
  void stopAudio() {
    // Detiene el audio utilizando el ID del sonido
    soundpool.stop(soundId!);
  }

  @override
  void dispose() {
    if (soundId != null) {
      soundpool.release();
    }
    audioTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
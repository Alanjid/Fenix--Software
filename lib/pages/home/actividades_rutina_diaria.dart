import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:untitled/pages/home/act_afectividad.dart';
import 'package:untitled/pages/home/aprende_poy_real.dart';
import 'package:untitled/pages/home/grabar_instrucciones.dart';

class rutina_diaria extends StatefulWidget {
  @override
  _actR_diariaState createState() => _actR_diariaState();
}

class _actR_diariaState extends State<rutina_diaria> {
  String texto_dictar="Realizamos las actividades de rutina diaria";
  String audioUrl="assets/audios/audio_rutina_diaria.mp3";
  ValueNotifier<bool> isAudioPlaying = ValueNotifier<bool>(false);

  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            sonido_grabar(
              texto_grabar: texto_dictar,
              audioPath: audioUrl,
            ),
            SizedBox(width: 8),
            Image.asset(
              'assets/img/logo.png',
              width: 60,
              height: 60,
            ),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/fondoNM.png'),
              fit: BoxFit.cover
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            StrokeText(
              text: texto_dictar,
              strokeWidth: 6,
              strokeColor: Colors.green,
              textStyle: TextStyle(
                fontSize: 38,
                fontFamily: 'lazydog',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  iconSize: 120,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => afectividad_realista()));
                  },
                  icon: Image(
                    image: AssetImage(
                      "assets/img/abrazo.png",
                    ),
                  ),
                ),
                IconButton(
                  iconSize: 120,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => apren_pony_lenguaje_real()));
                  },
                  icon: Image(
                    image: AssetImage(
                        "assets/img/higiene personal.png"
                    ),
                  ),
                ),
                IconButton(
                  iconSize: 120,
                  onPressed: (){

                  },
                  icon: Image(
                    image: AssetImage(
                        "assets/img/acciones.png"
                    ),
                  ),
                ),
                IconButton(
                  iconSize: 120,
                  onPressed: (){

                  },
                  icon: Image(
                    image: AssetImage(
                        "assets/img/partes del cuerpo.png"
                    ),
                  ),
                ),
                IconButton(
                  iconSize: 120,
                  onPressed: (){

                  },
                  icon: Image(
                    image: AssetImage(
                        "assets/img/prendas.png"
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Future<void> audioFondo() async {
    Soundpool pool = Soundpool();

    int soundId = await rootBundle.load(audioUrl).then((ByteData soundData) {
      return pool.load(soundData);
    });
    int streamId = await pool.play(soundId);
  }
  void startTimer() {
    Future.delayed(const Duration(seconds: 1), () {
      audioFondo();
    });
  }
}

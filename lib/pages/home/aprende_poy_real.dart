import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:soundpool/soundpool.dart';
import 'package:animate_do/animate_do.dart';
import 'package:untitled/pages/home/felicitacion.dart';

import 'audios.dart';
import 'grabar_instrucciones.dart';

class apren_pony_lenguaje_real extends StatefulWidget {
  @override
  afre createState()=> afre();
}

class afre extends State {
  @override
  bool visible=false,visible2=false,visible3=false,visible4=false;
  String Texto_act="¿Que objetos encuentras en el baño?";
  String audioUrl="assets/audios/act_baño.mp3";
  Widget build(BuildContext context) {
    if(visible==true && visible2==true && visible3==true && visible4==true) {
      Future.delayed(Duration(seconds:2), () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>
            felicitacion(
                photo: 'assets/img/felicitar.png', width: 400, heigth: 400)));
      });
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 40,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            sonido_grabar(
              texto_grabar: Texto_act,
              audioPath: audioUrl,
            ),
            AutoPlayAudioWidget(
              audioPath: audioUrl,
            ),
            StrokeText(
              text: Texto_act,
              strokeWidth: 6,
              strokeColor: Colors.orange,
              textStyle: TextStyle(
                fontSize: 28,
                fontFamily: 'lazydog',
              ),
            ),
            SizedBox(width: 100),
            Image.asset(
              'assets/img/logo.png',
              width: 60,
              height: 60,
            ),
          ],
        ),
      ),//aqui termina la barra de arriba de la pagina

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/fondoNM.png',
              ),
              fit: BoxFit.cover,
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children:[
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Visibility(
                              visible: visible,
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 62, horizontal: 62),
                                decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(0.4)
                                ),
                              ),
                            ),
                            //Boton Matemáticas
                            Container(
                              width:125.0,
                              height: 125.0,
                              padding: const EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(0),
                                  border: Border.all(width: 2,color: Colors.black),
                                  color: Colors.white
                              ),
                              child: IconButton(
                                onPressed: (){
                                  soundpool2();
                                },
                                icon: Image.asset('assets/img/platanos.png',height: 200,width: 200.0,),
                              ),
                            ),
                            Stack(
                              children:[
                                Container(
                                  width:125.0,
                                  height: 125.0,
                                  padding: const EdgeInsets.all(0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(0),
                                      border: Border.all(width: 2,color: Colors.black),
                                      color: Colors.white
                                  ),
                                  child: IconButton(
                                    onPressed: (){
                                      //soundpool();
                                      setState(()  {
                                        visible2=true;
                                      });
                                      soundpool();
                                    },
                                    icon: Image.asset('assets/img/despa_papel_real.png',height: 200,width: 200.0,),
                                  ),
                                ),
                                Visibility(
                                  visible: visible2,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 62, horizontal: 62),
                                    decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.4)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width:125.0,
                              height: 125.0,
                              padding: const EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(0),
                                  border: Border.all(width: 2,color: Colors.black),
                                  color: Colors.white
                              ),
                              child: IconButton(
                                onPressed: (){
                                  soundpool2();
                                },
                                icon: Image.asset('assets/img/pelotar.png',height: 200,width: 200.0,),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width:125.0,
                              height: 125.0,
                              padding: const EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(0),
                                  border: Border.all(width: 2,color: Colors.black),
                                  color: Colors.white
                              ),
                              child: IconButton(
                                onPressed: (){
                                  soundpool2();
                                },
                                icon: Image.asset('assets/img/silla_real.png',height: 200,width: 200.0,),
                              ),
                            ),
                            Stack(
                              children:[
                                Container(
                                  width:125.0,
                                  height: 125.0,
                                  padding: const EdgeInsets.all(0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(0),
                                      border: Border.all(width: 2,color: Colors.black),
                                      color: Colors.white
                                  ),
                                  child: IconButton(
                                    onPressed: (){
                                      //soundpool();
                                      setState(()  {
                                        visible4=true;
                                      });
                                      soundpool();
                                    },
                                    icon: Image.asset('assets/img/bote_basuraa_real.png',height: 200,width: 200.0,),
                                  ),
                                ),
                                Visibility(
                                  visible: visible4,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 62, horizontal: 62),
                                    decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.4)
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Stack(
                              children:[
                                Container(
                                  width:125.0,
                                  height: 125.0,
                                  padding: const EdgeInsets.all(0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(0),
                                      border: Border.all(width: 2,color: Colors.black),
                                      color: Colors.white
                                  ),
                                  child: IconButton(
                                    onPressed: (){
                                      //soundpool();
                                      setState(()  {
                                        visible3=true;
                                      });
                                      soundpool();
                                    },
                                    icon: Image.asset('assets/img/lavabo_real.png',height: 200,width: 200.0,),
                                  ),
                                ),
                                Visibility(
                                  visible: visible3,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 62, horizontal: 62),
                                    decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.4)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width:125.0,
                              height: 125.0,
                              padding: const EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(0),
                                  border: Border.all(width: 2,color: Colors.black),
                                  color: Colors.white
                              ),
                              child: IconButton(
                                onPressed: (){
                                  soundpool2();
                                },
                                icon: Image.asset('assets/img/tijeras_real.png',height: 200,width: 200.0,),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),

                  ],
                ),

              ],
            ),
            //row
            //this
          ],
        ),
      ),
    );
  } //fin constructor

  Future<void> soundpool() async {
    Soundpool pool = Soundpool();

    int soundId = await rootBundle.load('assets/audios/acierto.mp3').then((ByteData soundData) {
      return pool.load(soundData);
    });
    int streamId = await pool.play(soundId);
  }
  Future<void> soundpool2() async {
    Soundpool pool = Soundpool();

    int soundId = await rootBundle.load('assets/audios/error.mp3').then((ByteData soundData) {
      return pool.load(soundData);
    });
    int streamId = await pool.play(soundId);
  }

}
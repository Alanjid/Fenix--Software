import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';
class tareas_comp_diarias extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/fondo.gif'),
              fit: BoxFit.cover
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
                image: AssetImage(
                  'assets/img/alerta.png'
                ),
              width: 200,
              height: 200,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                StrokeText(
                    text: 'HAS COMPLETADO TUS',
                  strokeWidth: 6,
                  strokeColor: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 28,
                    fontFamily: 'lazydog'
                  ),
                ),
                StrokeText(
                  text: 'ACTIVIDADES DEL DIA, VUELVE ',
                  strokeWidth: 6,
                  strokeColor: Colors.black,
                  textStyle: TextStyle(
                      fontSize: 28,
                      fontFamily: 'lazydog'
                  ),
                ),
                StrokeText(
                  text: 'MAÑANA PARA SEGUIR',
                  strokeWidth: 6,
                  strokeColor: Colors.black,
                  textStyle: TextStyle(
                      fontSize: 28,
                      fontFamily: 'lazydog'
                  ),
                ),
                StrokeText(
                  text: 'TRABAJANDO',
                  strokeWidth: 6,
                  strokeColor: Colors.black,
                  textStyle: TextStyle(
                      fontSize: 28,
                      fontFamily: 'lazydog'
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

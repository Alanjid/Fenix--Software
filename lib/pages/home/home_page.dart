import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/pages/home/niveles_de_actividades.dart';
import 'package:untitled/pages/home/principal.dart';
import 'package:untitled/pages/home/saludo_inicio.dart';
import 'pantalla_de_carga.dart';
import 'package:untitled/utils/colors.dart' as utils;

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>{
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
    return isLoading
        ? Pantalla_de_Carga()
        : Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/fondoNM.png',
                ),
                fit: BoxFit.cover,
              )
            ),
            // Aquí agregas el contenido del contenedor
            child: Column(
              children: [
                SizedBox(
                  width: 350,
                  height: 300,
                  child:Image(
                    width: 100,
                      height: 300,
                      image: AssetImage(
                          "assets/img/logo.png"
                      )
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child:ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        onPressed: (){
                          showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return Dialog(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                      alignment: Alignment.center,
                                      height: 400,
                                      width: 450,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 100,
                                            width: 100,
                                            child: Image(
                                              image: AssetImage(
                                                "assets/img/logo.png"
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "INICIO DE SESIÓN",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          SizedBox(
                                            width: 300,
                                            height: 80,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                ),
                                                label: Text(
                                                  "Ingresa el usuario"
                                                ),
                                                icon: Icon(
                                                  size: 20,
                                                  Icons.account_circle,
                                                  color: utils.Colors.azulitoArriba,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 300,
                                            height: 80,
                                            child: TextField(
                                              obscureText: true,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(

                                                ),
                                                label: Text(
                                                    "Ingresa la contraseña"
                                                ),
                                                icon: Icon(
                                                  size: 20,
                                                  Icons.lock_rounded,
                                                  color: utils.Colors.azulitoArriba,
                                                ),
                                              ),
                                            ),
                                          ),
                                          MaterialButton(
                                            color: utils.Colors.azulitoArriba,
                                            height: 50,
                                            child: Text(
                                              "INICIAR SESIÓN",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white
                                              ),
                                            ),
                                              onPressed: (){
                                                //Navigator.push(context, MaterialPageRoute(builder: (context) => saludo()));
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => principal()));
                                          }),
                                        ],
                                      ),
                                  ),
                                );
                              }
                          );
                        },
                        icon: Image.asset('assets/img/botonstart.png'),
                        iconSize: 60,
                      ),

                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

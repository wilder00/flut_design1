import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 15.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        _crearImagen(),
        _crearTitulo(),
        _crearAcciones(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
      ]),
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          "https://tokens.gala.games/images/sandbox-games/mirandus/screenshots/medium/Mirandus_Scene.jpg"),
    );
  }

  Widget _crearTitulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lago en un puente",
                  style: estiloTitulo,
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Un lago en Alemania",
                  style: estiloSubTitulo,
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 30.0,
          ),
          Text(
            '41',
            style: TextStyle(fontSize: 18.0),
          )
        ],
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        Text(
          texto,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        "Dolor irure exercitation voluptate ullamco magna minim mollit amet excepteur eiusmod occaecat duis. Aute anim velit pariatur adipisicing anim reprehenderit nisi et veniam laborum duis id et irure. Adipisicing sint id sint ad do pariatur deserunt ad tempor pariatur fugiat occaecat.",
        textAlign: TextAlign.justify,
      ),
    );
  }
}

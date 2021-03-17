import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
        ],
      ),
    );
  }

  Widget _crearImagen() {
    return Image(
        image: NetworkImage(
            'https://www.mickeyshannon.com/photos/landscape-photography.jpg'));
  }

  Widget _crearTitulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Lago con un puente', style: estiloTitulo),
                SizedBox(
                  height: 7.0,
                ),
                Text('Un Lago que se ', style: estiloSubTitulo),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red, size: 30.0),
          Text('41', style: TextStyle(fontSize: 20.0))
        ],
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      _accion(Icons.call, 'CALL'),
      _accion(Icons.near_me, 'ROUTE'),
      _accion(Icons.share, 'Share'),
    ]);
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _crearTexto(){
    return Text(data)
  }
}

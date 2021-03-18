import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        height: 300.0,
        fit: BoxFit.cover,
        image: NetworkImage(
            'https://www.mickeyshannon.com/photos/landscape-photography.jpg'),
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
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

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Id Lorem veniam mollit ea ipsum qui qui elit sunt deserunt enim ad. Velit cupidatat est culpa dolor dolor nulla elit amet enim officia sint Lorem proident. Nulla esse occaecat pariatur minim dolor aliquip voluptate cupidatat enim quis officia cillum. Et id culpa ex adipisicing nisi adipisicing culpa voluptate amet officia commodo. Fugiat mollit consequat ipsum laborum culpa Lorem occaecat nostrud. Excepteur Lorem cillum enim enim esse laborum sit qui fugiat est tempor.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}

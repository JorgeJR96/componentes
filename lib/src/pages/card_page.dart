import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards')),
      backgroundColor: Colors.green,
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[_cardTipo1(), SizedBox(width: 10), _cardTipo2()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.lightGreen),
            title: Text('Titulo de la tarrjeta'),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(child: Text('Cancelar'), onPressed: () {}),
              TextButton(child: Text('Ok'), onPressed: () {})
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(
                'https://i.ytimg.com/vi/Zr-qM5Vrd0g/maxresdefault.jpg'),
            placeholder: AssetImage('assets/giphy.gif'),
            fadeInDuration: Duration(milliseconds: 10),
            height: 250,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Alguien intenta desbloquear tu teléfono'),
          )
        ],
      ),
    );
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: <BoxShadow>[
              BoxShadow(
//Color negro con índice de opacidad 26%
                  color: Colors.green,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(2, 10))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: card,
        ));
  }
}

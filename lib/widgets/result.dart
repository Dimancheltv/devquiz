import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result  extends StatelessWidget {

  final int count;
  final int total;
  final Function onClearState;

  Result({Key key,
    this.count,
    this.total,
    this.onClearState
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    String msg = '';
    Widget img;
    if ( 0 <= count && count <=3 ) {
      msg = 'Темная сторона\n не для тебя, дружок.';
      img = Image.asset('assets/images/bad.png');
    } else if ( 4 <= count && count <=7 ) {
      msg = 'Совсем чуть-чуть до цели!';
      img = Image.asset('assets/images/middle.png');
    } else if (7 <= count && count <=10) {
      msg = 'Ура! Победа!';
      img = Image.asset('assets/images/good.png');
    }


    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(
        horizontal: 30.0
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 5.0),
          )
        ],
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xff5337ff),
            Color(0xff8131ff),
            Color(0xffbd27ff),
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),

          Divider(
            color: Colors.white,
          ),
          Text(
            'Верно ответил на  $count из  $total',
          ),
          Divider(
            color: Colors.white,
          ),

          FlatButton(
            child: Text(
              'Пройти заново'
            ),
            onPressed: onClearState,
          ),

        ],
      ),
    );
  }
}

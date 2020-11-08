import 'package:aidarbekaruzhanpr10/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Practice10Aru());
}

class Practice10Aru extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aruzhan practice 10',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(
          'Расписание',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.green,
        brightness: Brightness.light,
        elevation: 0,
      ),
      drawer: Menu(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white70,
              ),
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Сегодня',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[busCard(''), busCardTxt('')],
                    ),
                  ),
                  Container(
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'YUTONG',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'KZ 888     32 мест',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'KN 02',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Column(children: <Widget>[
                      OutlineButton(
                        borderSide: BorderSide(width: 2.0, color: Colors.green),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Text('Удалить рейс'),
                        onPressed: () {},
                      ),
                    ]),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Column(children: <Widget>[
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Text('ДОБАВИТЬ РЕЙС', style: TextStyle(color: Colors.white),),
                        color: Colors.green,
                        onPressed: () {},
                      ),
                    ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget busCard(image) {
    return AspectRatio(
      aspectRatio: 2.2 / 3,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/images/yutong.jpg')),
        ),
      ),
    );
  }

  Widget busCardTxt(text) {
    return AspectRatio(
      aspectRatio: 2.6 / 3,
      child: Container(
        decoration: BoxDecoration(),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Асыката - Алматы',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
            Text(
              'Отправление',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Дата - 06.02.2020 Thu',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
            Text(
              'Время - 18:39',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
            Text(
              'Прибытие',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Дата - 07.02.2020 Fri',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
            Text(
              'Время - 06:10',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 3,
            )
          ],
        ),
      ),
    );
  }
}

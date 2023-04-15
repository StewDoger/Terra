import 'package:flutter/material.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toast/toast.dart';

class Activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ListTile _followList(int num, String name, String place) {
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/usr$num.jfif'),
          radius: 28.0,
        ),
        title: Text(
          name,
          style: TextStyle(
            fontFamily: 'Metropolis',
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
        subtitle: Text(
          place,
          style: TextStyle(
            fontFamily: 'Metropolis',
            fontSize: 12.0,
          ),
        ),
        trailing: IconButton(
          icon: FaIcon(
            FontAwesomeIcons.userPlus,
            color: Colors.blueAccent,
            size: 19.0,
          ),
        ),
        onTap: () {
          Toast.show("Following list updated!", context,
              duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
        },
      );
    }

    return ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Card(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 3.0, 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 30.0,
                shadowColor: Colors.pink,
                child: Container(
                  padding: EdgeInsets.fromLTRB(15.0, 20.0, 50.0, 15.0),
                  height: 101.0,
                  width: 169.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'New Followers',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Last 7 days',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Metropolis',
                            fontSize: 10.0),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        '265',
                        style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.pink, Colors.redAccent, Colors.orange],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ),
            ),
            //Todo: Randomise Profile pics
            //Todo: Randomise Network images
            Expanded(
              child: Card(
                margin: EdgeInsets.fromLTRB(8.0, 20.0, 10.0, 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 30.0,
                shadowColor: Colors.blue,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 50.0, 10.0),
                  height: 101.0,
                  width: 162.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Unfollowed',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Last 7 days',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Metropolis',
                            fontSize: 10.0),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        '82',
                        style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple,
                          Colors.deepPurple,
                          Colors.blueAccent
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ),
            ),
          ],
        ),
        _followList(Random().nextInt(10) + 1, 'Vincentius', 'Japan'),
        _followList(Random().nextInt(10) + 1, 'Wira', 'North Korea'),
        _followList(Random().nextInt(10) + 1, 'Erick', 'China'),
        _followList(Random().nextInt(10) + 1, 'Reyhan', 'Taiwan'),
        _followList(Random().nextInt(10) + 1, 'Adittya', 'India'),
        _followList(Random().nextInt(10) + 1, 'Ardan', 'Brazil'),
        _followList(Random().nextInt(10) + 1, 'Andri', 'Spain'),
        _followList(Random().nextInt(10) + 1, 'Adriyanus', 'Indonesia'),
        _followList(Random().nextInt(10) + 1, 'Johan', 'Somalia'),
        _followList(Random().nextInt(10) + 1, 'Peter', 'South African'),
        _followList(Random().nextInt(10) + 1, 'Bayu', 'Thailand'),
        _followList(Random().nextInt(10) + 1, 'Andrew', 'Australia'),
        _followList(Random().nextInt(10) + 1, 'Cecil', 'South Korea'),
        _followList(Random().nextInt(10) + 1, 'Dony', 'Philippines'),
        _followList(Random().nextInt(10) + 1, 'Devi', 'USA'),
        _followList(Random().nextInt(10) + 1, 'Joshua', 'Los Angles'),
        _followList(Random().nextInt(10) + 1, 'Hans', 'Bekasi'),
        _followList(Random().nextInt(10) + 1, 'Novita', 'Medan'),
        _followList(Random().nextInt(10) + 1, 'Luthfi', 'Tanggerang'),
      ],
    );
  }
}

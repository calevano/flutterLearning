import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> colors = [
    Color.fromRGBO(250, 156, 146, 1),
    Color.fromRGBO(114, 217, 180, 1),
    Color.fromRGBO(133, 215, 239, 1),
    Color.fromRGBO(176, 166, 236, 1)
  ];

  final _styleText = new TextStyle(
    color: Color.fromRGBO(185, 193, 197, 1),
    fontWeight: FontWeight.w400,
    fontSize: 9.0,
  );

  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: _listCard(),
      ),
      // backgroundColor: Colors.white,
      extendBody: true,
      // resizeToAvoidBottomInset: false,
      bottomNavigationBar: _myBottomAppBar(),
      floatingActionButton: _myFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _listCard() {
    return ListView(
      children: <Widget>[
        Container(
          height: 130.0,
          child: ListView(
            padding: const EdgeInsets.only(left: 15.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _slideFriend(0, 'maria', 'Maria'),
              _slideFriend(1, 'pilar', 'Pilar'),
              _slideFriend(2, 'lady', 'Lady'),
              _slideFriend(3, 'robert', 'Robert'),
              _slideFriend(0, 'romina', 'Romina'),
              _slideFriend(1, 'stefanny', 'Stefanny'),
              _slideFriend(2, 'brenda', 'Brenda'),
              _slideFriend(3, 'jess', 'Jessenia'),
              _slideFriend(0, 'juan', 'Juan'),
              _slideFriend(1, 'ale', 'Alessandra'),
              _slideFriend(2, 'ana', 'Ana Paula'),
              _slideFriend(3, 'isai', 'Isai'),
            ],
          ),
        ),
        _card(0, 'carlos', 'CARLOS LEVANO', 'FULL STACK', '8'),
        _card(1, 'dandy', 'DANDY PERÉZ', 'FULL STACK', '8'),
        _card(2, 'efrain', 'EFRAIN BRICEÑO', 'UI/UX Designer', '5'),
        _card(3, 'jose', 'JOSÉ RAMIREZ', 'ACCOUNT ANALYST', '4'),
      ],
    );
  }

  Widget _card(color, image, name, job, number) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      width: double.infinity,
      height: 160.0,
      child: Card(
        color: colors[color],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        shadowColor: colors[color],
        elevation: 11.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                child: CircleAvatar(
                  radius: 55.0,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/img/people/$image.jpg'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      job,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      '$number Years',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _slideFriend(color, image, name) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      width: 80.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(5.0),
            margin: const EdgeInsets.only(bottom: 5.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: colors[color]),
            ),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/img/people/$image.jpg'),
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget _myFab() {
    return FloatingActionButton(
      onPressed: () {
        print('me pinchaste');
      },
      child: Icon(Icons.add, size: 40.0),
      backgroundColor: Theme.of(context).primaryColor,
      foregroundColor: Colors.white,
      elevation: 2.0,
    );
  }

  Widget _myBottomAppBar() {
    return BottomAppBar(
      // elevation: 4,
      shape: CircularNotchedRectangle(),
      notchMargin: 9.0,
      child: Container(
        height: 60.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                MaterialButton(
                  // color: Theme.of(context).primaryColor,
                  splashColor: Theme.of(context).primaryColor,
                  minWidth: 40,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.apps,
                          size: 30.0, color: Theme.of(context).primaryColor),
                      Text(
                        'HOME',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 9.0,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  splashColor: Theme.of(context).primaryColor,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.turned_in_not, size: 30.0, color: Colors.grey),
                      Text('SAVED', style: _styleText),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                MaterialButton(
                  splashColor: Theme.of(context).primaryColor,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.person_outline,
                          size: 30.0, color: Colors.grey),
                      Text('PROFILE', style: _styleText),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  splashColor: Theme.of(context).primaryColor,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.more_horiz, size: 30.0, color: Colors.grey),
                      Text('MORE', style: _styleText),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _myBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.green,
      type: BottomNavigationBarType.fixed,
      // iconSize: 20.0,
      currentIndex: 0,
      selectedItemColor: Color.fromRGBO(253, 205, 51, 1),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(Icons.apps),
          title: Text(
            'Home',
            style: _styleText,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.turned_in_not),
          title: Text(
            'Saved',
            style: _styleText,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          title: Text(
            'Profile',
            style: _styleText,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          title: Text(
            'More',
            style: _styleText,
          ),
        ),
      ],
    );
  }
}

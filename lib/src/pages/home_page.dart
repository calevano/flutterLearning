import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Color> colors = [
    Color.fromRGBO(250, 156, 146, 1),
    Color.fromRGBO(114, 217, 180, 1),
    Color.fromRGBO(133, 215, 239, 1),
    Color.fromRGBO(176, 166, 236, 1)
  ];

  final _styleText = new TextStyle(
    // color: Color.fromRGBO(185, 193, 197, 1),
    color: Color.fromRGBO(161, 174, 185, 1),
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
              _slideFriend(0, 'maria', 'MARIA SOTO', 'ADMINISTRATOR', '4'),
              _slideFriend(1, 'pilar', 'PILAR SOTO', 'COO', '8'),
              _slideFriend(2, 'lady', 'LADY ANCCO', 'CTO', '3'),
              _slideFriend(3, 'robert', 'ROBERT DONAYRE', 'JOURNALIST', '4'),
              _slideFriend(0, 'romina', 'ROMINA MEZA', 'ASSISTENT TI', '5'),
              _slideFriend(1, 'stefanny', 'STEFANNY CABRERA', 'CEO', '4'),
              _slideFriend(2, 'brenda', 'BRENDA COLLANTES', 'CASHIER', '10'),
              _slideFriend(3, 'jess', 'JESSENIA LEVANO', 'COUNTER', '12'),
              _slideFriend(0, 'juan', 'JUAN NICKOLS', 'RR.HH', '5'),
              _slideFriend(1, 'ale', 'ALESSANDRA FIGUEROA', 'ASSISTANT', '1'),
              _slideFriend(2, 'ana', 'ANA PAULA SERNAQUE', 'PRODUCER', '3'),
              _slideFriend(3, 'isai', 'ISAI RODRIGUEZ', 'GOALKEEPER', '6'),
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
    final _arguments = {
      'color': color,
      'image': image,
      'name': name,
      'job': job,
      'number': number
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      width: double.infinity,
      height: 160.0,
      child: GestureDetector(
        onTap: () {
          print('click in card en $name');
          Navigator.pushNamed(context, 'detalleHome', arguments: _arguments);
        },
        child: Card(
          color: colors[color],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          shadowColor: colors[color],
          elevation: 8.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Hero(
                    tag: _arguments['name'],
                    child: CircleAvatar(
                      radius: 55.0,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage:
                            AssetImage('assets/img/people/$image.jpg'),
                      ),
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
                          fontSize: 18.0,
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
      ),
    );
  }

  Widget _slideFriend(color, image, name, job, number) {
    final _nameModify = name.split(" ");
    final _arguments = {
      'color': color,
      'image': image,
      'name': name,
      'job': job,
      'number': number
    };
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      width: 80.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            // padding: const EdgeInsets.all(5.0),
            margin: const EdgeInsets.only(bottom: 5.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: colors[color],
                width: 3.0,
              ),
            ),
            child: Hero(
              tag: _arguments['name'],
              child: GestureDetector(
                onTap: () {
                  print('pinchaste con GestureDetector en $name');
                  Navigator.pushNamed(context, 'detalleHome',
                      arguments: _arguments);
                },
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/img/people/$image.jpg'),
                ),
              ),
            ),
          ),
          Text(
            _nameModify[0],
            overflow: TextOverflow.ellipsis,
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
      backgroundColor: Colors.yellow[700],
      foregroundColor: Colors.white,
      elevation: 2.0,
    );
  }

  Widget _myBottomAppBar() {
    return BottomAppBar(
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
                  minWidth: 40,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.apps, size: 30.0, color: Colors.yellow[700]),
                      Text(
                        'HOME',
                        style: TextStyle(
                          color: Colors.yellow[700],
                          fontWeight: FontWeight.w400,
                          fontSize: 9.0,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.turned_in_not,
                        size: 30.0,
                        color: Color.fromRGBO(161, 174, 185, 1),
                      ),
                      Text('SAVED', style: _styleText),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.person_outline,
                        size: 30.0,
                        color: Color.fromRGBO(161, 174, 185, 1),
                      ),
                      Text('PROFILE', style: _styleText),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.more_horiz,
                        size: 30.0,
                        color: Color.fromRGBO(161, 174, 185, 1),
                      ),
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

import 'package:flutter/material.dart';

class DetalleHomePage extends StatefulWidget {
  // const DetalleHomePage({Key key}) : super(key: key);

  @override
  _DetalleHomePageState createState() => _DetalleHomePageState();
}

class _DetalleHomePageState extends State<DetalleHomePage> {
  final List<Color> colors = [
    Color.fromRGBO(250, 156, 146, 1),
    Color.fromRGBO(114, 217, 180, 1),
    Color.fromRGBO(133, 215, 239, 1),
    Color.fromRGBO(176, 166, 236, 1)
  ];

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    print('args:::$args');
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // _background(context),
          _containerBg(context, args),
          _containerUser(context, args),
          _buttonHireHim(context),
          _appBar(),
        ],
      ),
    );
  }

  Widget _buttonHireHim(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        margin: EdgeInsets.only(bottom: 10.0),
        child: RaisedButton(
          padding: const EdgeInsets.symmetric(
            // horizontal: 10.0,
            vertical: 15.0,
          ),
          color: Colors.yellow[700],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          elevation: 30.0,
          onPressed: () {},
          child: Text(
            'HIRE HIM',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }

  Widget _containerUser(BuildContext context, args) {
    return SafeArea(
      child: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _avatar(args),
          _containerInformation(args),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'PROJECTS',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.yellow[700],
                  elevation: 0,
                  child: Text(
                    'VIEW ALL',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                )
              ],
            ),
          ),
          _projects(),
        ],
      ),
    );
  }

  Widget _projects() {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 5.0,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10.0),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(205, 205, 205, 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                        'https://d85wutc1n854v.cloudfront.net/live/products/icons/WB0R5L90S.jpg'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10.0),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(213, 228, 217, 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                        'https://d85wutc1n854v.cloudfront.net/live/products/icons/WB0573SK0.jpg'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 5.0,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10.0),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(213, 228, 217, 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                        'https://d85wutc1n854v.cloudfront.net/live/products/icons/WB073L89G.jpg'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10.0),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(205, 205, 205, 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                        'https://d85wutc1n854v.cloudfront.net/live/products/icons/WB0N89JMK.jpg'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 5.0,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10.0),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(205, 205, 205, 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                        'https://d85wutc1n854v.cloudfront.net/live/products/icons/WB059PDJG.jpg'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10.0),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(213, 228, 217, 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                        'https://d85wutc1n854v.cloudfront.net/live/products/icons/WB0J69TPB.jpg'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 5.0,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10.0),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(213, 228, 217, 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                        'https://d85wutc1n854v.cloudfront.net/live/products/icons/WB02N9M12.jpg'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10.0),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(205, 205, 205, 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                        'https://d85wutc1n854v.cloudfront.net/live/products/icons/WB0BLML90.jpg'),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _containerInformation(args) {
    return Container(
      height: 250.0,
      margin: const EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 20.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 50.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Text(
                  args['name'],
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  args['job'],
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Aute duis qui do aliqua aute ullamco ad do. Elit culpa ut aliqua non cupidatat incididunt elit nostrud ad.',
                  style: TextStyle(
                    color: Color.fromRGBO(161, 174, 185, 1),
                    fontSize: 11.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'FOLLOW',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                  color: Colors.yellow[700],
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                ),
              ],
            ),
          ),
          Divider(
            height: 1.0,
            color: Colors.grey[200],
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'FOLLOWERS',
                          style: TextStyle(
                            color: Color.fromRGBO(161, 174, 185, 1),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '25000',
                          style: TextStyle(
                            color: Color.fromRGBO(243, 110, 54, 1),
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      // color: Colors.amber[700],
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Colors.grey[100],
                          ),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'FOLLOWING',
                            style: TextStyle(
                              color: Color.fromRGBO(161, 174, 185, 1),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '257',
                            style: TextStyle(
                              color: Color.fromRGBO(243, 110, 54, 1),
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _avatar(args) {
    return Container(
      height: 220.0,
      alignment: Alignment.bottomCenter,
      // padding: const EdgeInsetsDirectional.only(bottom: 10.0),
      child: Hero(
        tag: args["name"],
        child: CircleAvatar(
          radius: 75.0,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 70.0,
            backgroundImage:
                AssetImage('assets/img/people/${args["image"]}.jpg'),
          ),
        ),
      ),
    );
  }

  Widget _containerBg(BuildContext context, args) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.2,
      decoration: BoxDecoration(
        color: colors[args['color']],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
    );
  }

  Widget _appBar() {
    return Positioned(
      top: 0.0,
      left: 0.0,
      right: 0.0,
      child: AppBar(
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(Icons.favorite_border),
            ),
            onTap: () {
              print('favorito');
            },
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(Icons.more_vert),
            ),
            onTap: () {
              print('me buscas');
            },
          ),
        ],
        elevation: 0,
      ),
    );
  }
}

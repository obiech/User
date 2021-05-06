import 'package:flutter/material.dart';

void main() => runApp(Slack());

class Slack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: Container(
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xfff2cbd0).withOpacity(0.3), Color(0xfff4ced9)],
            )),
            child: SingleChildScrollView(
              child: Stack(children: [
                ClipPath(
                  clipper: CurvedWidgetBackgroundClipper(),
                  child: Container(
                    padding: EdgeInsets.only(top: 100, left: 40),
                    width: double.infinity,
                    height: 290,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.white.withOpacity(0.3)],
                    )),
                    child: Text(
                      'Obiechina Emmanuel',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                ),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(140),
                    ),
                    Card(
                      color: Color(0xfff4ced9).withOpacity(0.3),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 2.0,
                      child: SizedBox(
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text(
                              'I AM OBIECHINA, STUDENT OF ELECTRONIC ENGINEERING AND VERY GOOD WITH FLUTTER. LOOKING FOR JOB. GIVE ME JOB. THANKS'),
                          subtitle: Text('Thank you'),
                          visualDensity: VisualDensity.comfortable,
                          onLongPress: null,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    Divider(),
                    Padding(padding: EdgeInsets.all(4)),
                    Card(
                      color: Color(0xfff4ced9),
                      elevation: 2.0,
                      child: SizedBox(
                        child: ListTile(
                          leading: Icon(Icons.person_outline_rounded),
                          title: Text('i love programming and playing chess.'),
                          subtitle: Text('bye'),
                        ),
                      ),
                    )
                  ],
                )
              ]),
            ),
          )),
    );
  }
}

class CurvedWidgetBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final clippedPath = Path();
    clippedPath.lineTo(size.width, 0);
    clippedPath.lineTo(size.width, size.height - 80 - 80);
    clippedPath.quadraticBezierTo(
        size.width, size.height - 80, size.width - 80, size.height - 80);
    clippedPath.lineTo(80, size.height - 80);
    clippedPath.quadraticBezierTo(0, size.height - 80, 0, size.height);
    clippedPath.lineTo(0, 0);
    clippedPath.close();
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper oldCipper) {
    return false;
  }
}

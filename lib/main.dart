import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mission 1',
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.1, 0.9],
            colors: [
              Colors.amberAccent[100],
              Colors.blueGrey[100],
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Mission 1'),
          ),
          body: Column(
            children: <Widget>[
              Stack(
                children: [
                  ImageBig(
                      'https://i.pinimg.com/originals/90/89/5d/90895d15c150cbc4d0f397a1ec82b834.jpg'),
                  Positioned(
                    child: ButtonLike(),
                    right: 20,
                    top: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                      child: ImageSmall(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKPci9c981Cu0ahJ414h-OUfFZ_-J1UrYEvw&usqp=CAU')),
                  Flexible(
                      child: ImageSmall(
                          'https://hk.appledaily.com/resizer/2h2v3APsqYPwr8W8Ef9eNRlQ5NU=/900x450/filters:quality(100)/cloudfront-ap-northeast-1.images.arcpublishing.com/appledaily/HP5A3IPZO5DVRKVZX73Z7LTESM.jpg')),
                  Flexible(
                      child: ImageSmall(
                          'https://i.pinimg.com/originals/90/89/5d/90895d15c150cbc4d0f397a1ec82b834.jpg')),
                  Flexible(
                      child: ImageSmall(
                          'https://cf.bstatic.com/images/hotel/max1280x900/134/134701134.jpg')),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text("Hera Palace",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Container(
                      height: 315,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}

class ImageBig extends StatelessWidget {
  ImageBig(this.url);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        url,
        fit: BoxFit.contain,
      ),
    );
  }
}

class ImageSmall extends StatelessWidget {
  ImageSmall(this.url);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        child: Image.network(
          url,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(3),
      height: 70,
    );
  }
}

class ButtonLike extends StatefulWidget {
  // ButtonLike({Key key}) : super(key: key);

  @override
  _ButtonLikeState createState() => _ButtonLikeState();
}

class _ButtonLikeState extends State<ButtonLike> {
  var liked = false;

  @override //button heart atas hmmm -,-
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.favorite,
          color: liked ? Colors.red : Colors.grey,
          size: 25.0,
          // semanticLabel: 'Text to announce in accessibility modes',
        ),
        onPressed: () {
          setState(() {
            liked = !liked;
          });
        },
      ),
    );
  }
}

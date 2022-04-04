import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Welcome to My AppBar ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image(
                    image: AssetImage('assets/images/bg.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(icon: new Icon(Icons.audiotrack), text: "Songs"),
                      new Tab(icon: new Icon(Icons.collections), text: "Gallery"),
                      new Tab(icon: new Icon(Icons.notifications), text: "Notifications"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              SongsScreen(),
              GaleryScreen(),
              NotifScreen()
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
      color: Colors.white,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class SongsScreen extends StatelessWidget {
  final List musik = [
    "Adele Easy On Me",
    "Adele Easy On Me",
    "Adele Easy On Me",
    "Adele Easy On Me",
    "Adele Easy On Me",
    "Adele Easy On Me",
    "Adele Easy On Me",
    "Adele Easy On Me",
    "Adele Easy On Me",
    "Adele Easy On Me",
    "Adele Easy On Me",
    "Adele Easy On Me",
    "Adele Easy On Me",
    "Adele Easy On Me",
    "Adele Easy On Me"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(musik[index], style: TextStyle(fontSize: 20)),
              subtitle: Text('Songs ' + musik[index]),
              leading: Icon(Icons.audiotrack),
            ),
          );
        },
        itemCount: musik.length,
      ),
    );
  }
}

class GaleryScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/images/4.png"),
                    width: 300.0,
                  ),
                  Text(
                    "Foto 1",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Image(
                    image: AssetImage("assets/images/4.png"),
                    width: 300.0,
                  ),
                  Text(
                    "Foto 2",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Image(
                    image: AssetImage("assets/images/4.png"),
                    width: 300.0,
                  ),
                  Text(
                    "Foto 3",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Image(
                    image: AssetImage("assets/images/4.png"),
                    width: 300.0,
                  ),
                  Text(
                    "Foto 4",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Image(
                    image: AssetImage("assets/images/4.png"),
                    width: 300.0,
                  ),
                  Text(
                    "Foto 5",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Image(
                    image: AssetImage("assets/images/4.png"),
                    width: 300.0,
                  ),
                  Text(
                    "Foto 6",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Image(
                    image: AssetImage("assets/images/4.png"),
                    width: 300.0,
                  ),
                  Text(
                    "Foto 6",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Image(
                    image: AssetImage("assets/images/4.png"),
                    width: 300.0,
                  ),
                  Text(
                    "Foto 7",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Image(
                    image: AssetImage("assets/images/4.png"),
                    width: 300.0,
                  ),
                  Text(
                    "Foto 7",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Image(
                    image: AssetImage("assets/images/4.png"),
                    width: 300.0,
                  ),
                  Text(
                    "Foto 8",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Image(
                    image: AssetImage("assets/images/4.png"),
                    width: 300.0,
                  ),
                  Text(
                    "Foto 9",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Image(
                    image: AssetImage("assets/images/4.png"),
                    width: 300.0,
                  ),
                  Text(
                    "Foto 10",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NotifScreen extends StatelessWidget {
  final List notif = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(notif[index], style: TextStyle(fontSize: 20)),
              leading: Icon(Icons.notifications),
            ),
          );
        },
        itemCount: notif.length,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_first_app/models/bottom_model.dart';
import 'package:flutter_first_app/screens/home.dart';

class YoutubeMain extends StatefulWidget {
  @override
  _YoutubeMainState createState() => _YoutubeMainState();
}

class _YoutubeMainState extends State<YoutubeMain> {
  int _currentIndex = 0;
  BottomModel bottommodel = new BottomModel();
  
  _onTapped(int index){
    setState(() {
          _currentIndex = index;
        });
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [
      HomeScreen(),
      Center(child: Text("Tendenze",)),
      Center(child: Text("Iscrizioni",)),
      Center(child: Text("Posta in arrivo",)),
      Center(child: Text("Raccolta",)),
      

    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Image.asset(
          'images/yt.png',
          width: 98.0,
          height: 22.0,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () => bottommodel.mainBottomSheet(context),
          ),
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        onTap: _onTapped,
        items: [
        BottomNavigationBarItem(title: Text("Home",style: TextStyle(fontSize: 12)), icon: Icon(Icons.home)),
        BottomNavigationBarItem(title: Text("Tendenze",style: TextStyle(fontSize: 12)), icon: Icon(Icons.whatshot)),
        BottomNavigationBarItem(title: Text("Iscrizioni",style: TextStyle(fontSize: 12)), icon: Icon(Icons.subscriptions)),
        BottomNavigationBarItem(title: Text("Posta in arrivo",style: TextStyle(fontSize: 12),), icon: Icon(Icons.mail),),
        BottomNavigationBarItem(title: Text("Raccolta",style: TextStyle(fontSize: 12)), icon: Icon(Icons.folder)),
      ]),
    );
  }
}

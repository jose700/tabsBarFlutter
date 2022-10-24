import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
return MaterialApp(
  debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: const Text('Tabs Demo'),
            centerTitle: true,
          ),
          body: TabBarView(
            children: [
             home(),
             SecondPage(),
              ThirdPage(),
            ],
          ),
        ),
      ),
    );
  }
  
  home() {
      return Scaffold(
        backgroundColor: Colors.black,
      body: Center(
        child: Image.network(
          'https://placekitten.com/200/300',
        ),
      ),
    );
  }
  
  SecondPage() {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(
          'https://www.fillmurray.com/250/250',
        ),
      ),
    );
  }
  
  ThirdPage() {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(
          'https://picsum.photos/250?image=9',
        ),
      ),
    );
  }
}
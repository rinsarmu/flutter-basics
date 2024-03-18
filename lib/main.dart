import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState(); // Implement createState
  String buttonName = "Click g me";
  MyApp({super.key});
}

class _MyAppState extends State<MyApp> {
  // String buttonName = "Click g me";
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Walaloo"),
        ),
        body: Center(
          child: currentIndex == 0
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.orange[300],
                        ),
                        onPressed: () {
                          print("Print Something please." + widget.buttonName);
                          setState(() {
                            widget.buttonName = "clicked me";
                          });
                        },
                        child: Text(widget.buttonName),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print("Print Something please." + widget.buttonName);
                          widget.buttonName = "plus me";
                        },
                        child: Text(widget.buttonName),
                      ),
                    ],
                  ),
                )
              : currentIndex == 1
                  ? Image.asset('images/profile.jpg')
                  : Container(
                      color: Colors.blue,
                      width: double.infinity,
                      height: double.infinity,
                      child: Text(
                        'Setting',
                      ),
                    ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.settings))
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(NaseehaApp());
}

class NaseehaApp extends StatefulWidget {
  @override
  _NaseehaAppState createState() => _NaseehaAppState();
}

class _NaseehaAppState extends State<NaseehaApp> {
  bool isDarkMode = false;
  int currentIndex = 0;

  final List<Widget> pages = [
    Center(child: Text('📰 Feed - Daily Naseeha')),
    Center(child: Text('🖼️ Visuals - Islamic Art')),
    Center(child: Text('📹 Videos - Reminders')),
    Center(child: Text('🎧 Audio - Lectures')),
    Center(child: Text('👤 Profile - Your Space')),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naseeha App',
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Naseeha'),
          actions: [
            IconButton(
              icon: Icon(Icons.brightness_6),
              onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
            )
          ],
        ),
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Feed'),
            BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Visuals'),
            BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label: 'Videos'),
            BottomNavigationBarItem(icon: Icon(Icons.headphones), label: 'Audio'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
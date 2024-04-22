import 'package:flutter/material.dart';
import 'package:sutoriapp/ui/add_story_screen.dart';
import 'package:sutoriapp/ui/info_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Center(
          child: TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Perhatian!'),
                        content: Text('Silahkan upload'),
                        actions: <Widget>[
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Y'))
                        ],
                      );
                    });
              },
              child: Text('No Story Yet'))),
      drawer: _drawer(),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => AddStoryScreen())));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search')
      ]),
    );
  }

  Drawer _drawer() {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(child: Text('Welcome')),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Account'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Account'),
          ),
        ],
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      title: Text('Sutori'),
      backgroundColor: Colors.amber,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InfoDetailScreen()));
            },
            icon: Icon(Icons.info))
      ],
    );
  }
}

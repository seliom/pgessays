import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/essay.dart';
import 'package:flutter_complete_guide/screens/categories_screen.dart';
import 'package:flutter_complete_guide/screens/favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: .5,
          ),
          color: Colors.orange,
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            'Paul Graham\'s Audio Essays',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Container(
                alignment: Alignment.centerRight,
                child: Image.asset('assets/images/pgessaylogo.png')),
          ),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.category),
              text: 'Categories',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'Favorites',
            )
          ]),
        ),
        drawer: Drawer(
          child: Text('Drawer'),
        ),
        body: TabBarView(
          children: [
            CategoriesScreen(),
            FavoritesScreen(),
          ],
        ),
      ),
    );
  }
}

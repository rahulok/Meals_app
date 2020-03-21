import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../screens/favourite_screen.dart';
import '../screens/categories_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: 'Category',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favourites',
              ),
              Tab(
                icon: Icon(Icons.camera),
                text: 'Camera',
              ),
            ],
          ),
        ),
        drawer: MainDrawer(),
        body: TabBarView(
          children: <Widget>[
            CategoriesScreen(),
            FavouriteScreen(),
            Center(
              child: Text('Helo beta'),
            )
          ],
        ),
      ),
    );
  }
}

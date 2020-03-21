import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _vegan = false,
      _vegetarian = false,
      _glutenfree = false,
      _lactosefree = false;

  Widget _builtListTile(var boolvalue, var tit, var subtit, Function updateit) {
    return SwitchListTile(
      title: Text(tit),
      subtitle: Text(subtit),
      value: boolvalue,
      onChanged: updateit,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Text(
              'Put the filters',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              _builtListTile(
                  _glutenfree, 'Gluten-Free', 'Only gluten free meals',
                  (newVal) {
                setState(() {
                  _glutenfree = newVal;
                });
              }),
              _builtListTile(_vegetarian, 'Vegetarian', 'Only vegetarian meals',
                  (newVal) {
                setState(() {
                  _vegetarian = newVal;
                });
              }),
              _builtListTile(_vegan, 'Lactose-Free', 'Only lactose free meals',
                  (newVal) {
                setState(() {
                  _vegan = newVal;
                });
              }),
              _builtListTile(_lactosefree, 'Vegan', 'Vegan meals', (newVal) {
                setState(() {
                  _lactosefree = newVal;
                });
              }),
            ],
          ))
        ],
      ),
    );
  }
}

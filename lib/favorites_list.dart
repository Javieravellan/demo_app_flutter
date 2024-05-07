import 'package:flutter/material.dart';
import 'package:my_app_flutter/main.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var favorites = appState.favorites;
    
    if (favorites.isEmpty) {
      return Center(child: Text('Todavía no tienes favoritos'),);
    }

    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Text('Tus favoritos'),
        ),
        for (var pair in favorites) 
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(pair.asLowerCase),
          )
      ],
    );
  }
  
}
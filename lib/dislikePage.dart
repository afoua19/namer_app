import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class dislike extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    var appState = context.watch<MyAppState>();
   if (appState.thumbDown.isEmpty) {
     return Center(
       child: Text("Il n'y a pas de mot non aimer pour le moment"),
     );
   }
   return ListView(
     children: [
       Padding(
         padding: const EdgeInsets.all(20),
         child: Text('Les mots '
             '${appState.thumbDown.length} non aimer:'),
       ),
       for (var pair in appState.thumbDown)
         ListTile(
           leading: Icon(Icons.thumb_down),
           title: Text(pair.asLowerCase),
         ),
     ],
   );
 } 
 }
























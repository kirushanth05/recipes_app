import 'package:flutter/material.dart';

import 'package:recipe_app/screens/home_screen.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );

/* 

  listOfItems.map((singleListItem) => processedSingleListItem);


  listOfItems.map((singleListItem) {
    return processedSingleListItem;
  })


*/
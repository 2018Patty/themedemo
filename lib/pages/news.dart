// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:themedemo/pages/newsbody.dart';

import '../colors.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu, color: Theme.of(context).colorScheme.primary),
          ),
        ),
        titleTextStyle: Theme.of(context).textTheme.headline3,
        elevation: 0,
        title: const Text('Home'),
        centerTitle: false,
        backgroundColor: Theme.of(context).colorScheme.background,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primary ,
              child: Icon(Icons.person, color: Theme.of(context).colorScheme.onPrimary),
            ),
          )
        ],
      ),
      drawer: Drawer(),
      body: NewsBody(),
    );
  }
}

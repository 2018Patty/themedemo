import 'dart:async';

import 'package:flutter/material.dart';
import 'package:themedemo/pages/hello.dart';
import 'package:themedemo/pages/news.dart';
import 'package:themedemo/pages/register.dart';

import 'package:themedemo/theme.dart';

import 'colors.dart';
import 'welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ThemeDemo',
      // theme: ThemeData.dark(),
      theme: theme(),
      home: Hello(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Register())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      // appBar: AppBar(
      //   title: const Text('Home'),
      // ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/logo.png'),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'SCIT PSU Surat',
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Prince of Songkla Univesity, ',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Surat Thani Campus',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                '“SCIT , We drive your future”',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: purplePrimary,
                    ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              // TextButton(
              //   onPressed: () {
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => const Welcome()));
              //   },
              //   child: const Text(
              //     'Next',
              //     style: TextStyle(
              //       fontSize: 16,
              //     ),
              //   ),
              //   style: TextButton.styleFrom(
              //     padding: const EdgeInsets.all(10),
              //     minimumSize: const Size.fromHeight(50),
              //     primary: Theme.of(context).colorScheme.onPrimary,
              //     backgroundColor: Theme.of(context).colorScheme.primary,
              //     shadowColor: Colors.grey,
              //     elevation: 5,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

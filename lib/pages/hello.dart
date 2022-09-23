import 'package:flutter/material.dart';

import 'package:flutter_lorem/flutter_lorem.dart';

import '../colors.dart';

class Hello extends StatefulWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  // var sentence = lipsum.createSentence();
  var sentence = lorem(paragraphs: 1, words: 100);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Theme Demo'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'SCIT PSU Surat',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                sentence,
                style: Theme.of(context).textTheme.bodyText2,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Comment',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      filled: true,
                      fillColor: lightPurple,
                      focusColor: lightPurple,
                      hintStyle: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        child: const Text('Send'),
                        onPressed: () {},
                      ),
                      ElevatedButton(
                        child: const Text('Cancel'),
                        onPressed: () {},
                      ),
                      ElevatedButton(
                        child: const Text('Send'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.home),
          onPressed: () {},
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:themedemo/pages/hello.dart';
import 'mainnews.dart';

import '../colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to SCIT',
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 5,
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
                height: 20,
              ),
              Image.asset('assets/images/login.png'),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: user,
                decoration: InputDecoration(
                  hintText: "Enter your email address",
                  filled: true,
                  fillColor: lightPurple,
                  focusColor: lightPurple,
                  hintStyle: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: password,
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
                    child: const Text('Login'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Hello(),
                            // MainNews(),
                            
                          ));
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.only(left: 20, right: 20),
                      ),
                      // foregroundColor:
                      //     MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(
                            color: purplePrimary,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: const Text('Cancel'),
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.only(left: 20, right: 20),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(
                            color: purplePrimary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../colors.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController fullname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/register.png'),
              const SizedBox(
                height: 20,
              ),
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
              TextFormField(
                controller: fullname,
                decoration: InputDecoration(
                  hintText: "Enter your full name",
                  filled: true,
                  fillColor: lightPurple,
                  // focusColor: lightPurple,
                  hintStyle: Theme.of(context).textTheme.bodyText1,

                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  //   borderSide: const BorderSide(
                  //     width: 0,
                  //     style: BorderStyle.none,
                  //   ),
                  // ),
                  // contentPadding: const EdgeInsets.all(16),

                  // hintStyle: Theme.of(context).textTheme.bodyText1,
                  // labelStyle: Theme.of(context).textTheme.bodyText1,
                ),
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
                    child: const Text('Register'),
                    onPressed: () {},
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
                    child: const Text('Login'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ));
                    },
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

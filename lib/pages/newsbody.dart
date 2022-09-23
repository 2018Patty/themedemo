import 'package:flutter/material.dart';

import '../colors.dart';

class NewsBody extends StatefulWidget {
  const NewsBody({Key? key}) : super(key: key);

  @override
  State<NewsBody> createState() => _NewsBodyState();
}

class _NewsBodyState extends State<NewsBody> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          MyTextField(search: search),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Lasted News ',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text('See More', 
              style:Theme.of(context).textTheme.bodyText1?.copyWith(
                      
                      fontSize: 16,
                      // fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.search,
  }) : super(key: key);

  final TextEditingController search;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        controller: search,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: "",
          filled: true,
          fillColor: whitePerl,
          focusColor: lightPurple,
          hintStyle: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}

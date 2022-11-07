// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'homepage.dart';

class LoginScreen extends StatelessWidget {
  
  String value;

  LoginScreen({Key? key, required this.value}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(children: [
                Image.asset(
                  'assets/images/PUTAHE.png',
                  height: 200,
                  width: 200,
                ),
              ]),
              const SizedBox(
                height: 25,
              ),
              TextField(
                autofocus: false,
                keyboardType: TextInputType.emailAddress,
                onChanged: (text) {
                    value = text;
                  },
                decoration: const InputDecoration(
                  labelText: "Input a Text",
                  border: OutlineInputBorder(), 
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.brown,
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginHomepage(value : value),
                        ));
                  },
                  child: const Text(
                    "Send",
                    style: TextStyle(
                      fontFamily: 'borsok',
                      fontSize: 25,
                      color: Color.fromARGB(190, 227, 179, 128),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'LoginScreen.dart';

class Rigister extends StatelessWidget {
  const Rigister({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        margin: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Column(children: <Widget>[
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('Image/graphic-forgot.png'),
                maxRadius: 60,
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'userName',
                  hintText: 'UserName',
                  prefixIcon: const Icon(Icons.verified_user),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'lastName',
                  hintText: 'lastName',
                  prefixIcon: const Icon(Icons.verified_user),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                ),
              ),

              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'email',
                  hintText: 'email',
                  prefixIcon: const Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'pasword',
                  hintText: 'password',
                  prefixIcon: const Icon(Icons.password),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Divider(),
              MaterialButton(
                minWidth: 300,
                color: Colors.blue,
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                padding: const EdgeInsets.all(30),
                child: const Text(
                  'login',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 23,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => LoginScreen())));
                },
              ),
              Container(
                child: InkWell(
                  child: Text('click me to screen page'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => LoginScreen())));
                  },
                ),
              )
            ]),
          ),
        ),
      ),
    ));
  }
}

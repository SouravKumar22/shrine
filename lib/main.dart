import 'package:flutter/material.dart';
import 'package:shrine/home.dart';

void main() {
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Login()));
}

class Login extends StatelessWidget{

  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            const Center(child: Text("SHRINE",style: TextStyle(fontWeight: FontWeight.bold),)),
            Image.asset("assets/img.png"),
            Container(margin: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.grey.shade100,
              child: TextField(controller: username,
              decoration: const InputDecoration(
                filled: true,
                label: Text("Username"),
                hintText: "Username"
            ),),),
            Container(margin: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.grey.shade100,
              child: TextField(controller: username,
              obscureText: true,
              decoration: const InputDecoration(
                filled: true,
                label: Text("Password"),
                hintText: "Password"
            ),),),
            OverflowBar(alignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: const Text('CANCEL'),
                onPressed: () {
                },
              ),
              ElevatedButton(
                child: const Text('NEXT'),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> const Home()));
                },
              ),
            ],)
          ],
        ),
      ),
    );
  }

}
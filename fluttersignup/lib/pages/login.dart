import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.home),
        backgroundColor: Colors.purple[400],
      ),
      appBar: AppBar(
        title: Text(
          "Log in",
          style: TextStyle(fontSize: 27),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple[300],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 9,
              ),
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66)),
              width: 266,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email :",
                  hintStyle: TextStyle(fontSize: 19),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 27),
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 9,
              ),
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(66)),
              width: 266,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password :",
                  hintStyle: TextStyle(fontSize: 19),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 99, vertical: 15)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66))),
              ),
              child: Text(
                "log in",
                style: TextStyle(fontSize: 27),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

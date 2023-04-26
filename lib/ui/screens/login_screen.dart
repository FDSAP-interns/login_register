import 'package:flutter/material.dart';
import 'package:sampleui/ui/screens/dashboard.dart';
import 'package:sampleui/ui/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome to my First Mobile App!",
          style: TextStyle(color: Colors.yellowAccent),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0x665ac18e),
              Color(0x995ac18e),
              Color(0xcc5ac18e),
              Color(0xff5ac18e),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "assets/image/user1.png",
                fit: BoxFit.cover,
                height: 150,
                width: 150,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Username",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            prefixIcon: Icon(Icons.key),
                            labelText: "Password",
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterScreen()),
                                );
                              },
                              child: Text("Registered"),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("Forget Password"),
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(50)),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dashboard()),
                              );
                            },
                            child: Text("Log in"),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

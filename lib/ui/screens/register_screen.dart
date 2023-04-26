import 'package:flutter/material.dart';
import 'package:sampleui/ui/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Register Now!",
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
          child: Row(children: [
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
                        prefixIcon: Icon(Icons.email),
                        labelText: "Email",
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
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: Icon(Icons.key),
                        labelText: "Confirm Password",
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text("Already have an account?"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          },
                          child: Text("Login"),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(50)),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text("Register"),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}

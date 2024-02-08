import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var emailControlle = TextEditingController();
  var pwdilControlle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(30),
        //crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Image.asset(
            'assests/coffee1.png',
            height: 70,
            width: 770,
          ),
          const SizedBox(height: 120),
          const Text(
            "Welcome back",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          TextFormField(
            controller: emailControlle,
            decoration: const InputDecoration(
              prefix: Icon(
                Icons.mail,
                color: Colors.black,
              ),
              hintText: "Email/phone number",
            ),
          ),
          TextFormField(
            controller: pwdilControlle,
            decoration: const InputDecoration(
              prefix: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              hintText: "password",
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (v) {},
              ),
              const Text(
                "Remeber me ",
                style: TextStyle(color: Colors.pink),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forget Password",
                    style: TextStyle(color: Colors.pink),
                  )),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            child: const Text("Login"),
          ),
          const SizedBox(height: 30),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "or Login with",
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assests/1ayejd51.bmp',
                height: 40,
              ),
              Image.asset(
                'assests/awx8pmaf.bmp',
                height: 40,
              ),
              Image.asset(
                'assests/weafdn53.bmp',
                height: 40,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              TextButton(
                onPressed: () {}, // Implement sign up logic
                child:
                    const Text("Sign up", style: TextStyle(color: Colors.pink)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

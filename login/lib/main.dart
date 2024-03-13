import 'package:flutter/material.dart';

import 'add_account.dart';
import 'widgetes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isVisable = true;
  @override
  Widget build(BuildContext context) {
    // double height_ = MediaQuery.of(context).size.height;
    // double width_ = MediaQuery.of(context).size.width;

    return Scaffold(
        body: ListView(
      children: [
        Column(children: [
          Image.asset(r"Image\1710195996647.png"),
          const SizedBox(
            height: 20,
          ),
          mytxt("Welco me back!", siz: 16),
          mytxt("Please, Log In."),
          mytextfild("johnsmith@outlook.com", const Icon(Icons.alternate_email),
              mycolor: Colors.black87),
          mytxtfiledpassword("..........."),
          Container(
            margin: const EdgeInsets.only(left: 185),
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Forget Password?",
                  style: TextStyle(
                      fontFamily: "PaytoneOne-Regulars",
                      color: Color.fromARGB(255, 0, 130, 236),
                      fontSize: 13,
                      fontWeight: FontWeight.w900,
                      decorationColor: Colors.blue),
                )),
          ),
          button("Log In"),
          const SizedBox(
            height: 10,
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Sing_Up(),
                          ));
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ])
        ]),
      ],
    ));
  }

  Widget mytxtfiledpassword(String hi) {
    showPassword() {
      setState(() {
        isVisable = !isVisable;
      });
    }

    return Container(
      height: 30,
      margin: const EdgeInsets.only(top: 10, left: 50, right: 60, bottom: 5),
      child: TextField(
        obscureText: isVisable,
        obscuringCharacter: ".",
        style: const TextStyle(fontSize: 20, color: Colors.black54),
        decoration: InputDecoration(
          hintText: hi,
          contentPadding: const EdgeInsets.only(bottom: 5),
          suffixIcon: IconButton(
              padding: const EdgeInsets.only(bottom: 10, left: 50),
              onPressed: () {
                showPassword();
              },
              icon: const Icon(
                Icons.remove_red_eye_sharp,
              )),
          isCollapsed: true,
          icon: const Icon(
            Icons.lock,
            size: 22,
          ),
          iconColor: Colors.black54,
        ),
      ),
    );
  }
}

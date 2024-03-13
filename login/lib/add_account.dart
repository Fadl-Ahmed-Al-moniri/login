import 'package:flutter/material.dart';
import 'main.dart';
import 'widgetes.dart';

// ignore: camel_case_types
class Sing_Up extends StatefulWidget {
  const Sing_Up({super.key});

  @override
  State<Sing_Up> createState() => page_Tow();
}

// ignore: camel_case_types
class page_Tow extends State<Sing_Up> {
  bool isVisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Image.asset(r"Image\1710195996629.png",
                      fit: BoxFit.fill)),
              mytxt("Hi there!", siz: 16),
              mytxt(
                "Let's get started.",
              ),
              mytextfild(
                  "johnsmith@outlook.com", const Icon(Icons.alternate_email),
                  mycolor: Colors.black87), //dkkkkkkkkkkkkkkkkk
              mytxtfiledpassword("................"),
              mytextfild(
                "Repeat Password",
                const Icon(Icons.lock),
              ),
              mytextfild(
                "Address",
                const Icon(Icons.home_rounded),
              ),
              mytextfild(
                  "Mobile number", const Icon(Icons.local_phone_outlined),
                  p: TextInputType.number),
              mytextfild("Date of birth: dd / mm / yy",
                  const Icon(Icons.date_range_sharp),
                  p: TextInputType.datetime),
              Container(
                margin: const EdgeInsets.only(
                    top: 10, left: 55, right: 60, bottom: 10),
                child: Wrap(
                  children: [
                    const Text("By siging up. you agree to our ",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 11,
                            fontWeight: FontWeight.bold)),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Terms & Conditions",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 83, 236),
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text(
                      " and ",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        " and Privacy Policy",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 83, 236),
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              button("Sign Up"),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>const  MyHomePage(),
                              ));
                        },
                        child: const Text(
                          "Log In",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ])
            ],
          )
        ],
      ),
    );
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

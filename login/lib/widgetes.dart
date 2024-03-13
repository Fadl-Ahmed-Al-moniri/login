import 'package:flutter/material.dart';

Widget mytxt(
  String tit, {
  double siz = 26,
}) {
  return Text(
    tit,
    style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: siz,
        color: Colors.black,
        fontWeight: siz == 26 ? FontWeight.bold : FontWeight.w500,
        wordSpacing: 3,
        fontFamily: siz == 26 ? "PaytoneOne-Regular" : null),
  );
}

Widget mytextfild(String ht, Icon myicon,
    {Color mycolor = Colors.black54, TextInputType p = TextInputType.text}) {
  return Container(
    margin: const EdgeInsets.only(top: 10, left: 50, right: 60, bottom: 10),
    child: TextField(
      style: const TextStyle(
          height: 1, fontFamily: "Concert_One", fontWeight: FontWeight.normal),
      cursorColor: Colors.blue,
      keyboardType: p,
      decoration: InputDecoration(
          hintText: ht,
          hintStyle: TextStyle(
            fontFamily: "Concert_One",
            color: mycolor,
            fontSize: 15,
          ),
          contentPadding: const EdgeInsets.only(bottom: 5),
          isCollapsed: true,
          icon: myicon,
          iconColor: Colors.black54,
          counterStyle: const TextStyle(
            fontFamily: "Concert_One",
            fontSize: 15,
          )),
    ),
  );
}

Widget button(String txt) {
  return Container(
    height: 40,
    width: 300,
    decoration: const BoxDecoration(
        color: Color.fromARGB(255, 0, 83, 236),
        borderRadius: BorderRadius.all(Radius.circular(50))),
    child: MaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: () {},
      child: Text(
        txt,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}

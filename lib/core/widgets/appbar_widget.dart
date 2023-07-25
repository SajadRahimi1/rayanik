import 'package:flutter/material.dart';

AppBar screensAppBar({String title = ""}) => AppBar(
      backgroundColor: const Color(0xffF8FAFB),
      title: Text(
        title,
        style: const TextStyle(color: Color(0xff000000), fontSize: 17),
      ),
      centerTitle: true,
      elevation: 5,
      iconTheme: const IconThemeData(color: Color(0xff000000)),
    );

AppBar homeAppBar() => AppBar(
      backgroundColor: const Color(0xffF8FAFB),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
      ],
      iconTheme: const IconThemeData(color: Color(0xff000000)),
    );

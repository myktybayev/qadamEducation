import 'package:flutter/material.dart';
import 'package:qadam_education/constants/app_color.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({super.key})
      : super(
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
          backgroundColor: AppColor.mainColor,
          leading: IconButton(
            icon: const Icon(
              Icons.account_circle_rounded,
              size: 50,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          title: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'User Name',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              Text(
                'email@gmail.com',
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              ),
            ],
          ),
        );
}

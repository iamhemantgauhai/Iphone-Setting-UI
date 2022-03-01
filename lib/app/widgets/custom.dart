// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  String? firstText;
  final Color? firstOne;
  String? text;
  final Color? secColor;
  final IconData? iconSec;
  late final dataChange;
  MyTile(
      {Key? key,
      this.firstText,
      this.firstOne,
      this.secColor,
      this.text,
      this.iconSec,
      this.dataChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          decoration: const BoxDecoration(color: Colors.white10),
          padding: const EdgeInsets.all(10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: firstOne,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        iconSec,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '$text',
                      style: TextStyle(fontSize: 16, color: secColor),
                    ),
                  ],
                ),
                dataChange,
              ])),
      onTap: () {},
    );
  }
}

class UniqueTile extends StatelessWidget {
  String? firstText;
  final Color? firstOne;
  final Color? secColor;
  final IconData? iconSec;
  late final dataChange;
  UniqueTile(
      {Key? key,
      this.firstText,
      this.firstOne,
      this.secColor,
      this.iconSec,
      this.dataChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          decoration: const BoxDecoration(color: Colors.white10),
          padding: const EdgeInsets.all(10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      '$firstText',
                      style: TextStyle(fontSize: 16, color: secColor),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: firstOne,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        iconSec,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                dataChange,
              ])),
      onTap: () {},
    );
  }
}

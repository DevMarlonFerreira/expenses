import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  AdaptativeButton({this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              label,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20),
            onPressed: onPressed,
          )
        : ElevatedButton(
            child: Text(
              label,
              style: TextStyle(
                  // color: Theme.of(context).primaryColor,
                  ),
            ),
            style: ButtonStyle(
                // foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
            onPressed: onPressed,
          );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final IconData iconData;
  final isNumber;
  final TextEditingController controller;
  final double paddingVertical;
  final BoxBorder border;

  const CustomTextField({
    Key key,
    this.hintText = 'placeholder',
    this.iconData = Icons.edit,
    this.isNumber = false,
    this.controller,
    this.paddingVertical = 2.0,
    this.border,
  }) : super(key: key);
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: widget.paddingVertical),
      decoration: BoxDecoration(
        borderRadius: widget.border == null ? BorderRadius.circular(3.0) : null,
        border: widget.border ??
            Border.all(
              color: Colors.grey[400],
            ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Icon(
              widget.iconData,
              color: Colors.grey[800],
              size: 18,
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: TextField(
              controller: widget.controller,
              keyboardType: widget.isNumber ? TextInputType.number : null,
              inputFormatters: widget.isNumber
                  ? <TextInputFormatter>[
                      WhitelistingTextInputFormatter.digitsOnly
                    ]
                  : null,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey[600]),
                hintText: widget.hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

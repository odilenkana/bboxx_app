import 'package:bboxx_app/shared/utils/app_theme.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppTheme.WHITE_COLOR,
        title: Text('Payment', style: TextStyle(color: AppTheme.DARK_COLOR, fontSize: 14.0),),
        leading: IconButton(icon: Icon(Icons.keyboard_backspace, color: AppTheme.DARK_COLOR,), onPressed: (){}),
      ),),
    );
  }
}
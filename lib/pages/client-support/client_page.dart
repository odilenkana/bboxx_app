import 'package:flutter/material.dart';
import 'package:bboxx_app/shared/utils/app_theme.dart';
import 'package:bboxx_app/pages/client-support/widgets/question_item.dart';

class ClientPage extends StatefulWidget {
  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: AppTheme.DARK_ACCENT_COLOR,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Service Client',
            style: TextStyle(color: AppTheme.DARK_ACCENT_COLOR, fontSize: 13),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close, color: AppTheme.DARK_ACCENT_COLOR),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Ask some questions bellow...',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 17.5,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              ...List.generate(6, (index) => QuestionItem())
            ],
          ),
        ),
      ),
    );
  }
}

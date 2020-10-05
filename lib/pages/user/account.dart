import 'package:flutter/material.dart';
import 'package:bboxx_app/shared/utils/app_theme.dart';
import 'package:bboxx_app/pages/client-support/widgets/question_item.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Account',
                  style: TextStyle(
                      color: AppTheme.DARK_ACCENT_COLOR,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: AppTheme.WHITE_COLOR,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.3),
                        offset: Offset(0, 2),
                        blurRadius: 5)
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppTheme.PRIMARY_COLOR.withOpacity(0.3),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppTheme.GREY_COLOR.withOpacity(0.9),
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.3),
                              offset: Offset(0, 2),
                              blurRadius: 5)
                        ],
                      ),
                      child: Image.asset('assets/images/asset-2@2x.png'),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mathew Matt. George',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'joined 12/02/2019',
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'SETTINGS',
                  style: TextStyle(
                      color: AppTheme.DARK_ACCENT_COLOR.withOpacity(0.3),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              buildSettingMenu(title: 'Language & Permissions'),
              buildSettingMenu(title: 'Inactivity Lock'),
              buildSettingMenu(title: 'Transaction history'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'HELP',
                  style: TextStyle(
                      color: AppTheme.DARK_ACCENT_COLOR.withOpacity(0.3),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              buildSettingMenu(title: 'Help Center'),
              buildSettingMenu(title: 'Abaout'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'USER',
                  style: TextStyle(
                      color: AppTheme.DARK_ACCENT_COLOR.withOpacity(0.3),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              buildSettingMenu(title: 'Logout'),
            ],
          ),
        ),
      ),
    );
  }

  Container buildSettingMenu({String title}) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppTheme.WHITE_COLOR,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(.3),
              offset: Offset(0, 2),
              blurRadius: 5)
        ],
      ),
      child: Row(
        children: [
          Icon(
            Icons.settings,
            color: AppTheme.DARK_COLOR,
            size: 15.0,
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.black.withOpacity(.2),
            size: 11.0,
          ),
        ],
      ),
    );
  }
}

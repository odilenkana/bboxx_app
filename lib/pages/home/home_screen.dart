import 'package:bboxx_app/pages/payment/payment_screen.dart';
import 'package:bboxx_app/shared/utils/app_theme.dart';
import 'package:bboxx_app/shared/widgets/recent_transaction.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: AppTheme.DARK_COLOR,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'client area'.toUpperCase(),
            style: TextStyle(
              color: AppTheme.WHITE_COLOR,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.settings),
                color: AppTheme.WHITE_COLOR,
                onPressed: () {})
          ],
        ),
        drawer: Drawer(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: AppTheme.DARK_COLOR,
              gradient: LinearGradient(
                colors: [
               AppTheme.DARK_COLOR,
                  AppTheme.ACCENT_COLOR,
              ])
            ),
            child: Column(
              children: [
                buildUserProfileContainer(context,
                    height: 155, color: Colors.transparent),
                    Divider(),
                buildDrawerMenu(
                    title: 'Dashboard', icon: Icons.dashboard, onTap: () {}),
                buildDrawerMenu(
                    title: 'Account', icon: Icons.account_circle, onTap: () {}),
                buildDrawerMenu(
                    title: 'Service request',
                    icon: Icons.star_border,
                    onTap: () {}),
                buildDrawerMenu(
                    title: 'Payment',
                    icon: Icons.credit_card,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentScreen(),
                        ),
                      );
                    }),
                buildDrawerMenu(
                    title: 'Preferences',
                    icon: Icons.perm_device_information,
                    onTap: () {}),
                buildDrawerMenu(title: 'Help', icon: Icons.help, onTap: () {}),
                Spacer(),
                Row(
                  children: [
                    IconButton(icon: Icon(Icons.exit_to_app, color: AppTheme.WHITE_COLOR,), onPressed: null),
                  ],
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTopUserProfile(context,
                  color: AppTheme.DARK_COLOR, inDrawer: true),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Reccent transaction',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 13.5,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              ...List.generate(
                10,
                (index) => RecentTransaction(),
              )
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildDrawerMenu({String title, IconData icon, Function onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, size: 18.0,color: AppTheme.GREY_COLOR.withOpacity(0.4),),
      title: Text('$title', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12,color: AppTheme.GREY_COLOR.withOpacity(0.8)),),
      trailing: Icon(Icons.arrow_forward_ios, size: 14, color: AppTheme.GREY_COLOR.withOpacity(0.4),),
    );
  }

  Widget buildUserProfileContainer(BuildContext context,
      {double height, Color color, bool inDrawer = false}) {
    return Container(
      alignment: Alignment.center,
      // margin: const EdgeInsets.all(20.0),
      height: height ?? 160.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: color ?? Colors.grey[200]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(8.0),
            width: inDrawer ? 60 : 60,
            height: inDrawer ? 60 : 60,
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
          Text(
            'Mathew Matt. George',
            style: TextStyle(
              color: AppTheme.GREY_COLOR.withOpacity(0.8),
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            '6 mounth ago',
            style: TextStyle(
              color: AppTheme.GREY_COLOR.withOpacity(0.8),
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Your last login was 12/02/2020',
            style: TextStyle(
              color: AppTheme.GREY_COLOR.withOpacity(0.8),
              fontSize: 10,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    );
  }

  Container buildTopUserProfile(BuildContext context,
      {double height, Color color, bool inDrawer = false}) {
    return Container(
      alignment: Alignment.center,
      // margin: const EdgeInsets.all(20.0),
      height: height ?? 100.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: color ?? Colors.grey[200]),
      child: Row(
        children: [
          SizedBox(width: 15.0),
          Container(
            margin: const EdgeInsets.all(8.0),
            width: inDrawer ? 60 : 90,
            height: inDrawer ? 60 : 90,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppTheme.PRIMARY_COLOR.withOpacity(0.3),
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 3,
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
          SizedBox(width: 10.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mathew Matt. George',
                style: TextStyle(
                  color: AppTheme.WHITE_COLOR,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '6 mounth ago',
                style: TextStyle(
                  color: AppTheme.GREY_COLOR,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Your last login was 12/02/2020',
                style: TextStyle(
                  color: AppTheme.GREY_COLOR,
                  fontSize: 11,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

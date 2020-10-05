import 'package:bboxx_app/models/chart_model_view.dart';
import 'package:bboxx_app/pages/payment/payment_screen.dart';
import 'package:bboxx_app/pages/client-support/client_page.dart';
import 'package:bboxx_app/pages/user/account.dart';
import 'package:bboxx_app/shared/utils/app_theme.dart';
import 'package:bboxx_app/shared/widgets/recent_transaction.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.WHITE_COLOR.withOpacity(0.98),
        appBar: AppBar(
          backgroundColor: AppTheme.DARK_COLOR,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'espace client'.toUpperCase(),
            style: TextStyle(
              color: AppTheme.WHITE_COLOR,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.settings,
                  size: 15.0,
                ),
                color: AppTheme.WHITE_COLOR,
                onPressed: () {})
          ],
        ),
        drawer: Drawer(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: AppTheme.DARK_COLOR,
              // gradient: LinearGradient(colors: [
              //   AppTheme.DARK_COLOR,
              //   AppTheme.ACCENT_COLOR,
              // ]),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  buildUserProfileContainer(context,
                      height: 155, color: Colors.transparent),
                  Divider(),
                  buildDrawerMenu(
                      title: 'Dashboard', icon: Icons.dashboard, onTap: () {}),
                  buildDrawerMenu(
                      title: 'Account', icon: Icons.account_circle, onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AccountPage(),
                          ),
                        );
                      }),
                  buildDrawerMenu(
                      title: 'Service request',
                      icon: Icons.star_border,
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ClientPage(),
                          ),
                        );
                      }),
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
                  // Spacer(),
                  // Row(
                  //   children: [
                  //     IconButton(
                  //         icon: Icon(
                  //           Icons.exit_to_app,
                  //           color: AppTheme.WHITE_COLOR,
                  //         ),
                  //         onPressed: null),
                  //   ],
                  // )
                ],
              ),
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
      leading: Icon(
        icon,
        size: 18.0,
        color: AppTheme.YELLO_COLOR.withOpacity(0.6),
      ),
      title: Text(
        '$title',
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: AppTheme.GREY_COLOR.withOpacity(0.8)),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 14,
        color: AppTheme.GREY_COLOR.withOpacity(0.4),
      ),
    );
  }

  Widget buildUserProfileContainer(BuildContext context,
      {double height, Color color, bool inDrawer = false}) {
    return Container(
      alignment: Alignment.center,
      // margin: const EdgeInsets.all(20.0),
      height: height ?? 160.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: color ?? Colors.grey[200],
      ),
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
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppTheme.WHITE_COLOR,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0)),
      ),
      child: Column(
        children: [
          Expanded(child: _getDefaultRadialBarChart()),
          // buildLineButton(context, title: 'Actualiser'),
          Text(
            '6 mounth ago',
            style: TextStyle(
              color: AppTheme.DARK_ACCENT_COLOR.withOpacity(0.8),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Your last login was 12/02/2020',
            style: TextStyle(
              color: AppTheme.DARK_ACCENT_COLOR.withOpacity(0.8),
              fontSize: 14,
              fontWeight: FontWeight.w200,
            ),
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      ),
    );
  }

  SfCircularChart _getDefaultRadialBarChart() {
    return SfCircularChart(
      title: ChartTitle(
          text: 'User activities',
          textStyle: TextStyle(color: AppTheme.DARK_ACCENT_COLOR)),
      series: _getRadialBarDefaultSeries(),
      legend: Legend(
        isVisible: true,
        position: LegendPosition.auto,
        // image: AssetImage('assets/images/asset-2@2x.png'),
        isResponsive: true,
        textStyle: TextStyle(
          color: AppTheme.DARK_ACCENT_COLOR,
        ),
      ),
      tooltipBehavior:
          TooltipBehavior(enable: true, format: 'point.x : point.ym'),
    );
  }

  /// Returns default radial series.
  List<RadialBarSeries<ChartSampleData, String>> _getRadialBarDefaultSeries() {
    final List<ChartSampleData> chartData = <ChartSampleData>[
      ChartSampleData(
          x: 'Jours restants',
          y: 10,
          text: '100%',
          pointColor: const Color.fromRGBO(248, 177, 149, 1.0)),
      ChartSampleData(
          x: 'Reste à payer',
          y: 11,
          text: '100%',
          pointColor: const Color.fromRGBO(246, 114, 128, 1.0)),
      ChartSampleData(
          x: 'Montant déjà déposé',
          y: 12,
          text: '100%',
          pointColor: const Color.fromRGBO(61, 205, 171, 1.0)),
      ChartSampleData(
          x: 'Délai',
          y: 13,
          text: '100%',
          pointColor: const Color.fromRGBO(1, 174, 190, 1.0)),
    ];
    return <RadialBarSeries<ChartSampleData, String>>[
      RadialBarSeries<ChartSampleData, String>(
        maximumValue: 15,
        // dataLabelSettings: DataLabelSettings(
        //     isVisible: true, textStyle: const TextStyle(fontSize: 10.0)),
        dataSource: chartData,
        cornerStyle: CornerStyle.bothCurve,
        gap: '8%',
        radius: '60%', legendIconType: LegendIconType.circle,
        xValueMapper: (ChartSampleData data, _) => data.x,
        yValueMapper: (ChartSampleData data, _) => data.y,
        pointRadiusMapper: (ChartSampleData data, _) => data.text,
        pointColorMapper: (ChartSampleData data, _) => data.pointColor,
        // dataLabelMapper: (ChartSampleData data, _) => data.x,
      )
    ];
  }
}

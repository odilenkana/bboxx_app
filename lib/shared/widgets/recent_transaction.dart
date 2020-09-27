import 'package:bboxx_app/shared/utils/app_theme.dart';
import 'package:flutter/material.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(5.0),
        margin: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5),
        decoration: BoxDecoration(
          color: AppTheme.WHITE_COLOR,
          
          // boxShadow: [
          //   BoxShadow(
          //     color: AppTheme.GREY_COLOR,
          //     offset: Offset(1, 1),
          //     blurRadius: 5,
          //   )
          // ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // CircleAvatar(
            //   backgroundColor: Colors.green,
            //   radius: 5,
            // ),
            Container(
              height: 35.0,
              width: 35.0,
              decoration: BoxDecoration(
                color: AppTheme.PRIMARY_COLOR,
                borderRadius: BorderRadius.circular(3.0)
              ),
              child: Icon(Icons.account_balance_wallet, color: AppTheme.WHITE_COLOR,),
            ),
            SizedBox(width: 8.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mathew Matt. George',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 2.0),
              Text(
                'Ref 0OJRJHRH6535367',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              // SizedBox(height: 2.0),
              // Text(
              //   '13/03/2020',
              //   style: TextStyle(
              //     color: Colors.black45,
              //     fontSize: 12,
              //     fontWeight: FontWeight.w500,
              //   ),
              // ),
              // Divider()
            ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

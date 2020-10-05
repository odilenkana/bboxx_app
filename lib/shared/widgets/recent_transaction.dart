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
            color: Colors.transparent,
            border:
                Border(top: BorderSide(width: .5, color: AppTheme.GREY_COLOR))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // CircleAvatar(
            //   backgroundColor: Colors.green,
            //   radius: 5,
            // ),
            Container(
              decoration: BoxDecoration(
                  color: AppTheme.GREEN_COLOR,
                  borderRadius: BorderRadius.circular(3.0)),
              child: Icon(
                Icons.account_balance_wallet,
                color: AppTheme.WHITE_COLOR,
                size: 15.0,
              ),
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Paiement',
                      style: TextStyle(
                        color: AppTheme.DARK_ACCENT_COLOR.withOpacity(0.8),
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Text(
                      'Ref 0OJRJHRH6535367',
                      style: TextStyle(
                        color: AppTheme.DARK_ACCENT_COLOR.withOpacity(0.8),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    // SizedBox(height: 2.0),
                    Text(
                      '13/03/2020',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: AppTheme.YELLO_COLOR,
                  borderRadius: BorderRadius.circular(3.0)),
              child: Text.rich(
                TextSpan(
                  text: '30 ',
                  children: [
                    TextSpan(
                      text: '\$',
                      style: TextStyle(
                        color: AppTheme.WHITE_COLOR,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                style: TextStyle(
                  color: AppTheme.WHITE_COLOR,
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:bboxx_app/shared/utils/app_theme.dart';

class QuestionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: AppTheme.GREY_COLOR,
              child: Icon(
                Icons.feedback,
                color: AppTheme.DARK_ACCENT_COLOR,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border(
                            top: BorderSide(
                                width: .5, color: AppTheme.GREY_COLOR))),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
                      style: TextStyle(
                        color: AppTheme.DARK_ACCENT_COLOR.withOpacity(0.8),
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

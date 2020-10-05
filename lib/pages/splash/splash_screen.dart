import 'package:bboxx_app/pages/home/home_screen.dart';
import 'package:bboxx_app/shared/utils/app_theme.dart';
import 'package:bboxx_app/shared/widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child:Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                AppTheme.DARK_COLOR,
                AppTheme.ACCENT_COLOR,
              ])),
        child: Scaffold(
          backgroundColor: AppTheme.DARK_COLOR,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bboxx',
                    style: TextStyle(
                        color: AppTheme.WHITE_COLOR,
                        letterSpacing: 2,
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Libérez votre potentiel',
                    style: TextStyle(
                        color: AppTheme.WHITE_COLOR,
                        letterSpacing: 1,
                        fontSize: 11.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 12.0),
                  buildLoginField(
                    context,
                    hintText: "Numéro ou Email",
                    icon: Icons.alternate_email,
                  ),
                  SizedBox(height: 12.0),
                  buildLoginField(
                    context,
                    isObscure: true,
                    hintText: "Password",
                    icon: Icons.lock_outline,
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: AppTheme.PRIMARY_COLOR,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Se Connecter',
                        style: TextStyle(
                          color: AppTheme.WHITE_COLOR,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Mot de passe oublié ?',
                    style: TextStyle(
                      color: AppTheme.WHITE_COLOR,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(20.0),
                          height: 1.5,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                      ),
                      Text(
                        'Ou vous inscrire \nen \ncréant un nouveau compte',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(20.0),
                          height: 1.5,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container buildLoginField(BuildContext context,
      {String hintText, IconData icon, bool isObscure}) {
    return Container(
      height: 50.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Color(0xFF6D7172).withOpacity(0.4),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        children: [
          Container(
            width: 70.0,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0)),
              color: Color(0xB6838586).withOpacity(0.3),
            ),
            child: Icon(
              icon ?? Icons.alternate_email,
              color: AppTheme.WHITE_COLOR.withOpacity(0.6),
              size: 20,
            ),
          ),
          // SizedBox(width: 15.0),
          Expanded(
            child: TextField(
              obscureText: isObscure ?? false,
              cursorColor: AppTheme.WHITE_COLOR,
              cursorWidth: 3.0,
              cursorRadius: Radius.circular(8.0),
              decoration: InputDecoration(
                filled: true,
                border: InputBorder.none,
                hintText: hintText ?? "",
                hintStyle: TextStyle(
                  color: AppTheme.WHITE_COLOR.withOpacity(0.8),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              style: TextStyle(
                  color: AppTheme.WHITE_COLOR,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  ),
            ),
          )
        ],
      ),
    );
  }
}

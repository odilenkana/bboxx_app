import 'package:bboxx_app/shared/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  var textFormFieldController =
      MoneyMaskedTextController(decimalSeparator: '.', thousandSeparator: ',');

  bool _isButtonDisabled = true;

  @override
  void initState() {
    textFormFieldController.updateValue(0.00);
    super.initState();
  }

  _checkInputForConfirm(double amount) {
    if (amount > 0.0) {
      setState(() {
        _isButtonDisabled = false;
      });
    } else {
      setState(() {
        _isButtonDisabled = true;
      });
    }
  }

  _startPayment() {
    Navigator.of(context).pop(textFormFieldController.numberValue);
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.DARK_COLOR,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: SizedBox(),
          title: Text(
            'Payment'.toUpperCase(),
            style: TextStyle(color: AppTheme.WHITE_COLOR, fontSize: 14),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close, color: AppTheme.WHITE_COLOR),
              onPressed: () {
                Navigator.of(context).pop(textFormFieldController.numberValue);
              },
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    width: 80,
                    height: 80,
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
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: Image.asset('assets/images/asset-2@2x.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Entrer le montant que vous voulez payer',
                      style: TextStyle(
                        color: AppTheme.WHITE_COLOR,
                        fontSize: 12.5,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    margin: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 5),
                    height: 100.0,
                    width: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        gradient: LinearGradient(colors: [
                          AppTheme.PRIMARY_COLOR,
                          AppTheme.GREEN_COLOR,
                        ])),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Reste à payer',
                                style: TextStyle(
                                  color: AppTheme.WHITE_COLOR.withOpacity(0.8),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                '\$800.00',
                                style: TextStyle(
                                  color: AppTheme.WHITE_COLOR.withOpacity(0.8),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.lock_outline,
                          color: AppTheme.DARK_COLOR,
                          size: 50.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 8),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: AppTheme.DARK_COLOR,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF0D1D31),
                            offset: Offset(2, 2),
                            blurRadius: 5)
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          'Montant',
                          style: TextStyle(
                            color: AppTheme.WHITE_COLOR.withOpacity(0.8),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextField(
                          controller: textFormFieldController,
                          keyboardType: TextInputType.numberWithOptions(
                              signed: false, decimal: true),
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 13, start: 25),
                              child: Text(
                                '\$',
                                style: TextStyle(
                                    fontSize: 20, color: AppTheme.WHITE_COLOR),
                              ),
                            ),
                            prefixStyle: TextStyle(fontSize: 25),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                              color: AppTheme.WHITE_COLOR, fontSize: 50),
                          onChanged: (text) {
                            _checkInputForConfirm(double.parse(text));
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: FlatButton(
                      color: AppTheme.PRIMARY_COLOR,
                      textColor: AppTheme.DARK_ACCENT_COLOR,
                      disabledColor: Color(0xFF6D7172).withOpacity(0.4),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w300),
                      ),
                      // onPressed: null,
                      onPressed:
                          _isButtonDisabled ? null : () => _startPayment(),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

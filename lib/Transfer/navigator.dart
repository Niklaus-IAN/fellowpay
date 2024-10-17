import 'package:fellowpay/Transfer/sendmoney.dart';
import 'package:fellowpay/Transfer/transfer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsNavigator extends StatelessWidget {
  int number  = 0;
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext _) => TransferScreen();
            break;
          case '/changePassword':
            builder = (BuildContext _) => SendMoneyScreen();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
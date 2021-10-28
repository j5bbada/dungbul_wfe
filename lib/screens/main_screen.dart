import 'package:dungbul_wfe/components/side_menu.dart';
import 'package:dungbul_wfe/responsive.dart';
import 'package:dungbul_wfe/screens/components/list_of_emails.dart';
import 'package:dungbul_wfe/screens/email_screen.dart';
import 'package:flutter/material.dart';
import 'package:dungbul_wfe/models/Email.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Responsive(
      mobile: Expanded(
        child: ListOfEmails(),
      ),
      tablet: Row(
        children: [
          Expanded(
            flex: 6,
            child: ListOfEmails(),
          ),
          Expanded(
            flex: 9,
            child: EmailScreen(email: emails[0]),
          ),
        ],
      ),
      desktop: Scaffold(
        body: Row(children: [
          Expanded(
            flex: _size.width > 1340 ? 2 : 4,
            child: SideMenu(),
          ),
          Expanded(
            flex: _size.width > 1340 ? 3 : 5,
            child: ListOfEmails(),
          ),
          Expanded(
            flex: _size.width > 1340 ? 8 : 10,
            child: EmailScreen(email: emails[0]),
          ),
        ]),
      ),
    );
  }
}

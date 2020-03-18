import 'package:beautiful_login_responesive/ui/signin/signin_page.dart';
import 'package:beautiful_login_responesive/ui/signup/signup_page.dart';
import 'package:beautiful_login_responesive/ui/ui_constructor.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        right: false,
        left: false,
        child: Container(
          color: backgroundColors,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      flex: 2,
                      child: Image.asset(
                        "images/sabsab.png",
                        height: 40,
                        width: 40,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            child: TabBar(
                              controller: _tabController,
                              isScrollable: true,
                              indicatorSize: TabBarIndicatorSize.label,
                              indicatorColor: Color.fromRGBO(170, 168, 171, 1),
                              tabs: <Widget>[
                                Container(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                      "Sign In",
                                      style: smallText,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "Sign Up",
                                    style: smallBoldText,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  color: lightGrayColor,
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      SignInPage(),
                      SignUpPage(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

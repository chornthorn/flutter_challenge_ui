import 'package:flutter/material.dart';
import 'package:flutter_challenge_ui/pages/btc_ui/btc_2_page.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';

class BTCPage extends StatelessWidget {
  var _mainColor = Color(0xff771FB9);
  var _secondColor = Color(0xff5E5E5E);
  var _yellowColor = Color(0xffFF8500);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCF8FF),
      appBar: AppBar(
        backgroundColor: Color(0xffFCF8FF),
        elevation: 0,
        brightness: Brightness.light,
        leading: IconButton(
          icon: Icon(
            AntDesign.arrowleft,
            color: _mainColor,
          ),
          onPressed: () {},
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 6),
            child: IconButton(
              icon: Icon(
                Ionicons.ios_menu,
                color: _mainColor,
              ),
              onPressed: () {
                MaterialPageRoute route = MaterialPageRoute(
                  builder: (context) => BTC2Page(),
                );
                Navigator.push(context, route);
              },
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          _BuildMainBody(),
        ],
      ),
    );
  }
}

class _BuildMainBody extends StatelessWidget {
  var _mainColor = Color(0xff771FB9);
  var _secondColor = Color(0xff5E5E5E);
  var _yellowColor = Color(0xffFF8500);
  var _backgroundColor = Color(0xffFCF8FF);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment with",
                  style: TextStyle(
                    fontSize: 16,
                    color: _mainColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                SvgPicture.asset("assets/images/visa_card.svg"),
                SvgPicture.asset("assets/images/master_card.svg"),
                SvgPicture.asset("assets/images/stripe_method.svg"),
                // IconButton(
                //   icon: Icon(FontAwesome.cc_visa),
                //   onPressed: null,
                //   color: _mainColor,
                // ),
                // IconButton(
                //     icon: Icon(FontAwesome.cc_mastercard), onPressed: null),
                // IconButton(icon: Icon(FontAwesome.cc_paypal), onPressed: null),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Container(
              decoration: BoxDecoration(
                color: _mainColor,
                borderRadius: BorderRadius.circular(20),
              ),
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCardReport(
                    title: 'Next Difficulty Estimated',
                    reportNumber: "(-1.27%) 15.35 T",
                  ),
                  _buildCardReport(
                    title: 'Date to Next Difficulty',
                    reportNumber: "3 Days 12 Hours",
                  ),
                  _buildCardReport(
                    title: 'Block Reward Halving',
                    reportNumber: "2020-05-10",
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: _mainColor,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "F",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "70,8847.33",
                                          style: TextStyle(
                                            fontSize: 26,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "12.76090729 BTC",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Icon(
                                    Entypo.dots_three_vertical,
                                    color: _mainColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 40),
                    child: Column(
                      children: [
                        _reportList(
                          icon: Icon(
                            Feather.arrow_up_right,
                            color: _yellowColor,
                          ),
                          number: "0.98%",
                          subTitle:
                              "618,400  SlushPool 1,287,059   12.70488904  BTC",
                        ),
                        SizedBox(height: 10),
                        _reportList(
                          icon: Icon(
                            Feather.arrow_down_left,
                            color: Colors.green,
                          ),
                          number: "0.50%",
                          subTitle:
                              "618,400  SlushPool 1,287,059   12.70488904  BTC",
                        ),
                        SizedBox(height: 10),
                        _reportList(
                          icon: Icon(
                            Feather.arrow_up_right,
                            color: _yellowColor,
                          ),
                          number: "0.99%",
                          subTitle:
                              "618,400  SlushPool 1,287,059   12.70488904  BTC",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _reportList(
      {final Icon icon, final String number, final String subTitle}) {
    return Container(
      padding: EdgeInsets.only(left: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$number",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: icon,
                padding: EdgeInsets.only(left: 5),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              '$subTitle',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildCardReport({final String title, final reportNumber}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Text(
            "$title",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Spacer(),
          Text(
            "$reportNumber",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

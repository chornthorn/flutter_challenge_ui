import 'package:flutter/material.dart';
import 'package:flutter_challenge_ui/pages/btc_ui/btc_page.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BTC2Page extends StatelessWidget {
  final _mainColor = Color(0xff771FB9);
  final _secondColor = Color(0xff5E5E5E);
  final _yellowColor = Color(0xffFF8500);
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
          onPressed: () {
            MaterialPageRoute route = MaterialPageRoute(
              builder: (context) => BTCPage(),
            );
            Navigator.push(context, route);
          },
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 6),
            child: IconButton(
              icon: Icon(
                Ionicons.ios_menu,
                color: _mainColor,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              _BuildMainBody(),
            ],
          ),
          //_buildBottomAppBar(),
        ],
      ),
      bottomNavigationBar: Container(
        child: BottomAppBar(
          color: Color(0xffFCF8FF),
          elevation: 0,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: MaterialButton(
              child: Text(
                "Bank Transfer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onPressed: () {},
              height: 50,
              color: _mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BuildMainBody extends StatelessWidget {
  final _mainColor = Color(0xff771FB9);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildCard(
                icon: Icon(
                  FontAwesome.money,
                  color: _mainColor,
                ),
              ),
              _buildCard(
                icon: Icon(
                  FontAwesome.university,
                  color: _mainColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildCard(
                icon: Icon(
                  FontAwesome.transgender,
                  color: _mainColor,
                ),
              ),
              _buildCard(
                icon: Icon(
                  MaterialIcons.attach_money,
                  color: _mainColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container _buildCard({final Icon icon}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      height: 210,
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                width: 2,
                color: _mainColor,
              ),
            ),
            child: icon,
          ),
          SizedBox(height: 20),
          Text(
            "Next Difficulty Estimated",
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 10),
          Text(
            "618,404	\t \t BTC.com",
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 10),
          Container(
            width: 120,
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                "7048 BTC",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: _mainColor,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
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

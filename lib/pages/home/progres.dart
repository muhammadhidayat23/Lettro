import 'package:flutter/material.dart';
import 'package:lettro/widgets/riwayat.dart';

import '../../theme.dart';
import 'main_page.dart';
// import 'package:lettro/theme.dart';

class ProgresPage extends StatelessWidget {
  const ProgresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget progres() {
      return ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 20,
                  bottom: 250,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      backgroundColor1,
                      backgroundColor2,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Riwayat',
                        style: primaryTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                          color: greyColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 63,
                    ),
                    Container(
                      child: Wrap(
                        spacing: 10,
                        runSpacing: 15,
                        children: [
                          Riwayat(),
                          Riwayat(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor2,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: backgroundColor2,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: Row(children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                child: Container(
                  width: 33,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/back.png',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Text('Kembali',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 18,
                    color: primaryColor,
                  )),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/header-img2.png',
                      width: 121,
                      height: 109,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
      body: progres(),
    );
  }
}

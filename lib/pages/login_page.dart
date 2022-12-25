import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lettro/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Image.asset(
                    'assets/login.png',
                    height: 226,
                    width: 217,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Text(
                    'Login',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                ),
                Container(
                  width:
                      MediaQuery.of(context).size.width - (2 * defaultMargin),
                  child: Center(
                    child: Text(
                      'Masukkan  NIK dan password untuk memulai aplikasi',
                      style: secondaryTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget nikInput() {
      return Container(
        margin: EdgeInsets.only(top: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'NIK',
                style: primaryTextStyle.copyWith(
                  fontWeight: bold,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 45,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: primaryColor),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'NIK Tidak Boleh Kosong !';
                          }
                          return null;
                        },
                        decoration: InputDecoration.collapsed(
                          hintText: 'Masukkan NIK Anda',
                          hintStyle: blueTextStyle,
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(16),
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

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'Password',
                style: primaryTextStyle.copyWith(
                  fontWeight: bold,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 45,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: primaryColor),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password Tidak Boleh Kosong !';
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                          border: InputBorder.none,
                          hintText: 'Masukkan Password Anda',
                          hintStyle: blueTextStyle,
                        ),
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

    Widget loginButton() {
      return Container(
        height: 50,
        width: MediaQuery.of(context).size.width - (2 * defaultMargin),
        margin: EdgeInsets.only(top: 20),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Text(
            'Masuk',
            style: buttonTitleTextStyle.copyWith(
              fontSize: 15,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    // Widget footer() {
    //   return Container(
    //     margin: EdgeInsets.only(bottom: 30),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Text(
    //           'Lupa Password ? ',
    //           style: secondaryTextStyle,
    //         ),
    //         Text(
    //           'Ubah Password',
    //           style: blueTextStyle,
    //         ),
    //       ],
    //     ),
    //   );
    // }

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 30,
              ),
              child: ListView(
                children: [
                  header(),
                  nikInput(),
                  passwordInput(),
                  loginButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

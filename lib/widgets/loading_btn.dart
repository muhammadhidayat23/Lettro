import 'package:flutter/material.dart';
import 'package:lettro/theme.dart';

class LoadingBtn extends StatelessWidget {
  const LoadingBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
      margin: EdgeInsets.only(top: 20),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation(
                  Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Loading',
              style: buttonTitleTextStyle.copyWith(
                fontSize: 15,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

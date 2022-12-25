import 'package:flutter/material.dart';
import 'package:lettro/theme.dart';

class Riwayat extends StatelessWidget {
  const Riwayat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
      height: 83,
      decoration: BoxDecoration(
        color: backgroundColor2,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Surat Keterangan Usaha',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  'Status :',
                  style: secondaryTextStyle,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Verifikasi',
                  style: secondaryTextStyle.copyWith(
                    color: primaryColor,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lettro/pages/form_pengajuan/form_sktm.dart';
import 'package:lettro/pages/form_pengajuan/form_surat_domisili.dart';
import 'package:lettro/pages/form_pengajuan/form_surat_kehilangan.dart';
import 'package:lettro/pages/form_pengajuan/form_surat_pekerjaan.dart';
import 'package:lettro/pages/form_pengajuan/form_surat_usaha.dart';
import 'package:lettro/theme.dart';
import 'package:lettro/widgets/surat_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 33,
          left: 32,
          right: 32,
        ),
        child: Row(
          children: [
            Container(
              width: 33,
              height: 33,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/pp.png',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 11,
            ),
            Text(
              "Muhammad Hidayat",
              style: primaryTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      );
    }

    Widget surat() {
      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              backgroundColor2,
              backgroundColor1,
            ],
          ),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 20),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hallo Hidayat',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'mau mengajukan surat apa hari ini ?',
                    style: blueTextStyle,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Wrap(
                    spacing: 3,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FormDomisili(),
                            ),
                          );
                        },
                        child: SuratCard(
                          id: 1,
                          namaSurat: 'Surat Keterangan Domisili',
                          imageUrl: 'assets/surat.png',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FormUsaha(),
                            ),
                          );
                        },
                        child: SuratCard(
                          id: 2,
                          namaSurat: 'Surat Keterangan Usaha',
                          imageUrl: 'assets/surat.png',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FormKehilangan(),
                            ),
                          );
                        },
                        child: SuratCard(
                          id: 3,
                          namaSurat: 'Surat Keterangan Kehilangan',
                          imageUrl: 'assets/surat.png',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FormSktm(),
                            ),
                          );
                        },
                        child: SuratCard(
                          id: 4,
                          namaSurat: 'Surat Keterangan Tidak Mampu (UMUM)',
                          imageUrl: 'assets/surat.png',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FormPekerjaan(),
                            ),
                          );
                        },
                        child: SuratCard(
                          id: 5,
                          namaSurat: 'Surat Keterangan Pekerjaan',
                          imageUrl: 'assets/surat.png',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: ListView(
        children: [
          header(),
          SizedBox(
            height: 20,
          ),
          surat(),
        ],
      ),
    );
  }
}

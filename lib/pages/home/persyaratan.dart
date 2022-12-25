import 'package:flutter/material.dart';
import 'package:lettro/pages/persyaratan/detail_akta_kelahiran.dart';
import 'package:lettro/pages/persyaratan/detail_pengantar_nikah.dart';
import 'package:lettro/pages/persyaratan/detail_penghasilan_ortu.dart';
import 'package:lettro/pages/persyaratan/detail_pindah_desa_kec.dart';
import 'package:lettro/pages/persyaratan/detail_sktm_beasiswa.dart';
import 'package:lettro/pages/persyaratan/detail_sktm_bpjs.dart';
import 'package:lettro/pages/persyaratan/detail_sktm_jkn_kis.dart';
import 'package:lettro/pages/persyaratan/detail_surat_domisili.dart';
import 'package:lettro/pages/persyaratan/detail_surat_kematian.dart';
import 'package:lettro/pages/persyaratan/detail_surat_usaha.dart';
import 'package:lettro/widgets/surat_card.dart';

import '../../theme.dart';
import 'main_page.dart';
// import 'package:lettro/theme.dart';

class PersyaratanPage extends StatelessWidget {
  const PersyaratanPage({Key? key}) : super(key: key);

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
                        'Persyaratan',
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
                        spacing: 3,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailSktmJknKis(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 1,
                              namaSurat:
                                  'Surat Keterangan Tidak Mampu (JKN/KIS)',
                              imageUrl: 'assets/surat.png',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailSktmJBeasiswa(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 2,
                              namaSurat:
                                  'Surat Keterangan Tidak Mampu (Beasiswa)',
                              imageUrl: 'assets/surat.png',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailSktmBpjs(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 3,
                              namaSurat: 'Surat Keterangan Tidak Mampu (BPJS)',
                              imageUrl: 'assets/surat.png',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailAktaKelahiran(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 4,
                              namaSurat: 'Pembutan Akta Kelahiran',
                              imageUrl: 'assets/surat.png',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailSuratKematian(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 5,
                              namaSurat: 'Surat Kematian (A5)',
                              imageUrl: 'assets/surat.png',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPenghasilanOrtu(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 6,
                              namaSurat:
                                  'Surat Keterangan Penghasilan Orang Tua',
                              imageUrl: 'assets/surat.png',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailDomisili(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 7,
                              namaSurat: 'Surat Ketarangan Domisili',
                              imageUrl: 'assets/surat.png',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPindahDesaKec(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 8,
                              namaSurat: 'Surat Pindah Antar Desa/Kecamatan',
                              imageUrl: 'assets/surat.png',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailSuratUsaha(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 9,
                              namaSurat: 'Surat Keterangan Usaha',
                              imageUrl: 'assets/surat.png',
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPengantarNikah(),
                                ),
                              );
                            },
                            child: SuratCard(
                              id: 10,
                              namaSurat: 'Pengantar Nikah',
                              imageUrl: 'assets/surat.png',
                            ),
                          ),
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
                child: Row(
                  children: [
                    Container(
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
                    SizedBox(
                      width: 2,
                    ),
                    Text('Kembali',
                        style: primaryTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 18,
                          color: primaryColor,
                        )),
                  ],
                ),
              ),
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

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uiandro/home/homeNotifier.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => HomeNotifier(context),
    child: Consumer<HomeNotifier>(builder: (context, value, child) => SafeArea(child: Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.yellow.shade600,
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.grey[300] ?? Colors.transparent
                )
              )
            ),
            padding: EdgeInsets.all(8),
            child: Stack(
              children: [
                Center(
                  child: Text(
                    "Beranda",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey[200] ?? Colors.transparent
                            )
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 16
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              SizedBox( width: 20),
                              Text(
                                "Cari Disini ...",
                                style: TextStyle(
                                  color: Colors.grey, fontSize: 14
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        height: 40,
                        width: 40,
                        child: Stack(
                          children: [
                            Center(
                              child: Icon(Icons.shopping_cart_outlined, size: 30),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 200,
                  padding: EdgeInsets.symmetric(
                    vertical: 16
                  ),
                  child: Container(
                    height: 200,
                    margin: EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.yellow.shade600
                    ),
                    child: Stack(
                      children:[
                        Positioned(
                          bottom: -30,
                          left: -30,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(0.3)
                            )
                          )
                        ),
                        Positioned(
                          top: -20,
                          right: -20,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(0.3)
                            )
                          )
                        ),
                        Positioned(
                          top: 40,
                          left: 40,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Text(
                                "Selamat Datang",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                              SizedBox( height: 5),
                              Text(
                                "Saya Sedang Belajar UI Mobile",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                      ] 
                      )
                    )
                  ]
                 )
                ),
                ),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.grey[400] ??
                        Colors.transparent)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height: 15),
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Container(
                                  child: Image.asset('linkaja.png', height: 40, width: 40),
                                ), SizedBox(width: 5),
                                Text(
                                  "Saldo",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.pink.shade50
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text('Link', style: TextStyle(fontSize: 10, color: Colors.pink, fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                SizedBox(width: 15)
                              ],
                            ),
                            SizedBox(height: 15),
                            Container(
                              child: Divider(
                                color: Colors.grey,
                                height: 1,
                                indent: 18,
                                endIndent: 18,
                              ), 
                            ),
                            SizedBox(height: 20),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                                padding: EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Colors.yellow.shade600),
                                          child: Image.asset('icon/qr.png')), SizedBox(height: 10),
                                        Text("Bayar", style: TextStyle(color: Colors.black, fontSize: 12), textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 50),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Colors.yellow.shade600),
                                          child: Image.asset('icon/voucher.png')), SizedBox(height: 10),
                                        Text("Voucher", style: TextStyle(color: Colors.black, fontSize: 12), textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 50),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Colors.yellow.shade600),
                                          child: Image.asset('icon/keep.png')), SizedBox(height: 10),
                                        Text("Keeping", style: TextStyle(color: Colors.black, fontSize: 12), textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 50),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Colors.yellow.shade600),
                                          child: Image.asset('icon/poin.png')), SizedBox(height: 10),
                                        Text("Tukar poin", style: TextStyle(color: Colors.black, fontSize: 12), textAlign: TextAlign.center,)
                                      ],
                                    ),
                                  )
                                ],
                              ),  
                            ), SizedBox(height: 15)
                          ],
                        ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Reels Kesukaan', textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                    Text('Lihat semua',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),)
                  ],
                ),
                Container(
                  height: 260,
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: value.items.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 16),
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.yellow.shade600,
                        ),
                        child: Center(
                          child: Text(
                            value.items[index],
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    }),
                  ),
                ), SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text(
                            'Produk Favorit', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
                          Text(
                            'Pilih Produk', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black)),
                        ],
                      )
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.yellow.shade600
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 20,left: 20),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.yellow.shade600
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.yellow.shade600
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 20,left: 20),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.yellow.shade600
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.yellow.shade600
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 20,left: 20),
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.yellow.shade600
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 80)
              ],
            ) 
          ),
        ],
        ),
       ))
      ),
    );
  }
}
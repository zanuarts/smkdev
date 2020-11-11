import 'package:flutter/material.dart';
import 'package:smkdev/src/constants/constant.dart';

class CarouselCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: Stack(
        children: [
          Container(
            height: 280,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/hospital_03.jpg'),
                fit: BoxFit.cover
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Sekilas Tentang RS Tingkat Akhir",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                )
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "RS Tingkat Akhir merupakan komunitas developer siswa SMK jurusan Rekayasa Perangkat Lunak (RPL), Teknik Komputer dan Jaringan (TKJ) dan Multimedia (MM) dari seluruh Indonesia.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                )
              ),                
            ],
          ),
          Positioned(
            top: 220,
            left: 300,
            child: RaisedButton(
              child: Text('Read',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            color: colorPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(20)
            ),
            onPressed: (){
              print("floating pressed!");
            }
          ),
        ),                
      ],
    )                
  );
  }
}
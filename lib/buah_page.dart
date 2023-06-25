import 'package:buahbuahann/data/buah_data.dart';
import 'package:buahbuahann/page/buah_model.dart';
import 'package:buahbuahann/page/detailbuah_page.dart';
import 'package:flutter/material.dart';

class BuahPage extends StatelessWidget {
  const BuahPage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MACAM BUAH - BUAHAN", style: TextStyle(fontWeight: FontWeight.bold),),backgroundColor: Colors.green, centerTitle: true),
      body: ListView.builder(
        itemCount: BuahData.itemCount,
        itemBuilder : (context,index){
          BuahModel buah = BuahData.getItemBuah(index)!;
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailBuahPage(
                buah: buah,)));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 7,
                color: Color.fromARGB(255, 174, 207, 160),
                child: Row(
                  children: [
                    Image.asset(buah.gambarBuah!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                    ),
                    Text(
                      buah.namaBuah!,
                      style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                      )
                  ],
                ),
            
              ),
            ),
          );
        }),
    );
  }
}
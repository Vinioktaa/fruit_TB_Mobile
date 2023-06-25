import 'package:audioplayers/audioplayers.dart';
import 'package:buahbuahann/page/webbuah_page.dart';
import 'package:flutter/material.dart';

import 'buah_model.dart';

class DetailBuahPage extends StatelessWidget {
  BuahModel? buah;
  DetailBuahPage({ Key? key,this.buah}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    playAudioBuah();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 130, 206, 133),
        title: Text(buah!.namaBuah!),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>WebBuahPage(
              WebBuah: buah!.linkBuah!,
              )));
          }, icon: const Icon(Icons.open_in_browser))
        ],
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
            width: double.infinity,
            child: Image.asset(
              buah!.gambarBuah!,
              height: MediaQuery.of(context).size.width * 0.7,
              fit: BoxFit.fitHeight,
              ),
             ),
             Text(buah!.namaBuah!,
             style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
             ),
             const SizedBox(height: 10,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Text(
                buah!.detailBuah!,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 18),
               ),
             ),
          ],
        ),
      ),
    );
  }
  Future<AudioPlayer> playAudioBuah() async {
    AudioCache cache = AudioCache();
    return await cache.play(buah!.audioBuah!);
  }
}


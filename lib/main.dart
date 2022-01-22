import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void playaudio(int notenumber) {
    final player = AudioCache();
    player.play('note$notenumber.wav');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffFFFCDD2),
          onPressed: () {},
          child: Icon(Icons.play_arrow),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Xylophone- App',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xffFFFCDD2),
        ),
        backgroundColor: Colors.red.shade100,
        body: SafeArea(
            child: Container(
          height: 750,
          width: 750,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/bg.png'))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 240,
                child: Stack(
                  children: [
                    Positioned(
                      left: 5,
                      top: 2,
                      child: Image(
                        image: AssetImage('assets/s1.png'),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 70,
                      child: Image(
                        image: AssetImage('assets/s2.png'),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      child: Image(
                        image: AssetImage('assets/s3.png'),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      top: 70,
                      child: Image(
                        image: AssetImage('assets/s4.png'),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  playaudio(1);
                },
                child: const Image(
                  image: AssetImage('assets/1.png'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  playaudio(2);
                },
                child: const Image(
                  image: AssetImage('assets/2.png'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  playaudio(3);
                },
                child: const Image(
                  image: AssetImage('assets/3.png'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  playaudio(4);
                },
                child: const Image(
                  image: AssetImage('assets/4.png'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  playaudio(5);
                },
                child: const Image(
                  image: AssetImage('assets/5.png'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  playaudio(6);
                },
                child: const Image(
                  image: AssetImage('assets/6.png'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  playaudio(7);
                },
                child: const Image(
                  image: AssetImage('assets/7.png'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        )),
      ),
    );
  }
}

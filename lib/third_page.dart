import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThirdPage extends StatelessWidget {
  Widget build(BuildContext context) {
    timeDilation = 100.0; // 1.0 means normal animation speed.

    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Hero Animation'),
      ),
      body: Center(
        child: PhotoHero(
          photo:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXOzAECGO9K_CM3U9wObNY3badC_2QKa74Dg&usqp=CAU',
          width: 300.0,
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (BuildContext context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Flippers Page'),
                ),
                body: Center(
                  child: Container(
                    // The blue background emphasizes that it's a new route.
                    color: Colors.lightBlueAccent,
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.topLeft,
                    child: PhotoHero(
                      photo:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXOzAECGO9K_CM3U9wObNY3badC_2QKa74Dg&usqp=CAU',
                      width: 100.0,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              );
            }));
          },
        ),
      ),
    );
  }
}

class PhotoHero extends StatelessWidget {
  const PhotoHero(
      {Key? key, required this.photo, required this.onTap, required this.width})
      : super(key: key);

  final String photo;
  final VoidCallback onTap;
  final double width;

  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.network(
              photo,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

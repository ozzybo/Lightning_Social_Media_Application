import 'package:flutter/material.dart';

userImages(String imagePath, String logoPath) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(logoPath),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        height: 30,
        width: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.black26),
        child: const Center(
            child: Text(
          'Follow',
          style: TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 14,
              fontWeight: FontWeight.bold),
        )),
      )
    ],
  );
}

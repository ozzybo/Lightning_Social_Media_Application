import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Details extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var imgPath;

  Details({Key? key, this.imgPath}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imgPath),
              ),
            ),
          ),
        ),
        ], 
      ),
    );
  }
}

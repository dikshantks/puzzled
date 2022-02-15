import 'dart:math';

import 'package:flutter/material.dart';

import '../constant.dart';

class Grid extends StatelessWidget {
  const Grid({
    Key? key,
    required this.clickgrid,
    required Size size,
    required this.number,
  })  : _size = size,
        super(key: key);

  final Size _size;
  final List<int> number;
  final Function clickgrid;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: _size.width <= 600 ? 450.0 : 600,
      width: _size.width <= 600 ? 450.0 : 600,
      padding: EdgeInsets.all(10.0),
      color: kblue,
      child: Padding(
        padding: EdgeInsets.all(0.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: sqrt(number.length).toInt(),
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0),
          itemCount: number.length,
          itemBuilder: (context, index) {
            return number[index] != 0
                ? GridButton(
                    text: "${number[index]}",
                    click: () {
                      clickgrid(index);
                    },
                  )
                : SizedBox.shrink();
          },
        ),
      ),
    );
  }
}

class GridButton extends StatefulWidget {
  const GridButton({
    Key? key,
    required this.text,
    required this.click,
  }) : super(key: key);
  final String text;
  final Function click;

  @override
  State<GridButton> createState() => _GridButtonState();
}

class _GridButtonState extends State<GridButton> {
  @override
  Widget build(BuildContext context) {
    var color1 = kgreen;

    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: color1,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
      onTap: () => widget.click(),
    );
  }
}

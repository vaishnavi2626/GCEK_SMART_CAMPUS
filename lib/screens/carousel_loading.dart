import 'package:flutter/material.dart';

class CarouselLoading extends StatelessWidget {
  const CarouselLoading({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.grey,
              ),
            ),
          ),
        )
      ],
    );
  }
}

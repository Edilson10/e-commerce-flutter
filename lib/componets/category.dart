// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CategoryList(
            image_location: 'images/cats/shoe.png',
            image_caption: 'sapatos',
          ),
          CategoryList(
            image_location: 'images/cats/trousers.png',
            image_caption: 'calcas',
          ),
          CategoryList(
            image_location: 'images/clothes/cap.png',
            image_caption: 'Bones',
          ),
          CategoryList(
            image_location: 'images/clothes/jersey.png',
            image_caption: 'camisolas',
          ),
          CategoryList(
            image_location: 'images/clothes/tshirt.png',
            image_caption: 'camisetas',
          ),
        ],
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  final String image_location;
  final String image_caption;

  const CategoryList(
      {super.key, required this.image_location, required this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: InkWell(
        onDoubleTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100,
              height: 80,
            ),
            subtitle: Text(image_caption),
          ),
        ),
      ),
    );
  }
}

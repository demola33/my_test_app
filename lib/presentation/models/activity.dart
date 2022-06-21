import 'package:flutter/material.dart';

class Activity {
  final String title;
  final DateTime date;
  final double price;
  final String logoUrl;

  Activity({
    required this.title,
    required this.date,
    required this.price,
    required this.logoUrl,
  });
}

List<Activity> activities = [
  Activity(
    title: 'Swap Order',
    date: DateTime(2021, 8, 17),
    price: -4500,
    logoUrl: 'asset/images/oando.png',
  ),
  Activity(
    title: 'Swap Order',
    date: DateTime(2021, 8, 17),
    price: -4500,
    logoUrl: 'asset/images/oando.png',
  ),
  Activity(
    title: 'New Order',
    date: DateTime(2021, 8, 17),
    price: -4500,
    logoUrl: 'asset/images/ap_gas.png',
  ),
];

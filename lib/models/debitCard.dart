import 'package:flutter/material.dart';

class DebitCard {
  final String name;
  final String norek;
  final String logo;

  const DebitCard({
    required this.name,
    required this.norek,
    required this.logo,
  });
}

const List<DebitCard> debitCards = [
  DebitCard(
    name: "Muhammad Fahrizal",
    norek: "2737173",
    logo:
        "https://i0.wp.com/www.alamatbank.com/wp-content/uploads/2014/11/Logo-BRI-300x250.png?fit=300%2C250&ssl=1",
  ),
  DebitCard(
    name: "Muhammad Fahrizal",
    norek: "8282817171711",
    logo:
        "https://cdn.freebiesupply.com/logos/thumbs/2x/bca-bank-central-asia-logo.png",
  ),
  DebitCard(
    name: "Muhammad Fahrizal",
    norek: "123456789",
    logo:
        "https://cdn.freebiesupply.com/logos/thumbs/2x/bank-mandiri-2-logo.png",
  ),
];

import 'package:flutter/material.dart';

class CardData {
  IconData icon;
  String text;
  Color color;

  CardData({this.icon, this.text, this.color});
}

final List<CardData> cardListData = [
  CardData(
    icon: Icons.people,
    text: 'همراهم شو',
    color: Color(0xFF7CCEC8),
  ),
  CardData(
    icon: Icons.card_giftcard,
    text: 'هدیه بگیر',
    color: Color(0xFF46B4D5),
  ),
  CardData(
    icon: Icons.event_note,
    text: 'کاراتو بساز',
    color: Color(0xFF5FD4E0),
  ),
  CardData(
    icon: Icons.message,
    text: 'تجربتو بگو',
    color: Color(0xFF197DA5),
  ),
];

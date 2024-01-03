import 'package:flutter/material.dart';

class IconItem {
  String name;
  IconData iconData;
  IconItem({required this.name, required this.iconData});
}

List<IconItem> iconItem = [
  IconItem(name: 'Send', iconData: Icons.paid_outlined),
  IconItem(name: 'Bill', iconData: Icons.blinds_closed),
  IconItem(name: 'Mobile', iconData: Icons.mobile_screen_share),
  IconItem(name: 'More', iconData: Icons.app_registration_rounded),
];

// *****************************

class ItemName {
  String url;
  String name;
  ItemName({required this.url, required this.name});
}

List<ItemName> itemName = [
  ItemName(url: 'assets/images/profile.jpeg', name: 'Azie'),
  ItemName(url: 'assets/images/profile1.jpeg', name: 'Chaoic'),
  ItemName(url: 'assets/images/profile2.jpeg', name: 'Fandit'),
  ItemName(url: 'assets/images/profile3.jpeg', name: 'Happy'),
  ItemName(url: 'assets/images/profile4.jpeg', name: 'Neyu'),
];

// *****************************

class Activities {
  IconData icon;
  String name;
  String price;
  String date;
  Activities(
      {required this.icon,
      required this.name,
      required this.price,
      required this.date});
}

List<Activities> activities = [
  Activities(
      icon: Icons.food_bank_outlined,
      name: 'Food Store',
      price:'-£23,5',
      date: 'Monday  10,  june'),
  Activities(
      icon: Icons.fastfood_rounded,
      name: 'Food Store',
      price: '-£23,5',
      date: 'Monday  10,  june'),
  Activities(
      icon: Icons.home_outlined,
      name: 'House Rent',
      price: '-£55,45',
      date: 'Tuesday  20,  May'),
  Activities(
      icon: Icons.home_rounded,
      name: 'House Rent',
      price: '-£55,45',
      date: 'Tuesday  20,  May'),
  Activities(
      icon: Icons.emoji_food_beverage_rounded,
      name: 'Cafe',
      price: '-£23,5',
      date: 'Monday  10,  june'),
  Activities(
      icon: Icons.home_rounded,
      name: 'House Rent',
      price: '-£55,45',
      date: 'Tuesday  20,  May'),
];

// *****************************

List<IconData> barIcon = [
  Icons.border_all_outlined,
  Icons.auto_mode_sharp,
  Icons.workspaces,
];

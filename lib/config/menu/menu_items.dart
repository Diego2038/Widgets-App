


import 'package:flutter/material.dart';

class MenuItems {

  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
  required this.title,
  required this.subTitle,
  required this.link,
  required this.icon,
  });

}

const List<MenuItems> appMenuItems = [

  MenuItems(
    title: "Botones", 
    subTitle: "varions botones en Flutter", 
    link: "/buttons", 
    icon: Icons.smart_button_outlined
  ),

  MenuItems(
    title: "Tarjetas", 
    subTitle: "un contenedor estilizado", 
    link: "/cards", 
    icon: Icons.credit_card
  ),

];
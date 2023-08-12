


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
    title: "Counter and Riverpod", 
    subTitle: "Para contar con el gestor de Riverpod", link: '/counter', 
    icon: Icons.add
  ),

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

  MenuItems(
    title: "Progress Indicators", 
    subTitle: "Generales y controlados", 
    link: "/progress", 
    icon: Icons.refresh_rounded
  ),
  
  MenuItems(
    title: "Snackbars", 
    subTitle: "Indicadores en pantalla", 
    link: "/snackbars", 
    icon: Icons.info_outline
  ),

  MenuItems(
    title: "Animated Container", 
    subTitle: "Stateful widget animado", 
    link: "/animated", 
    icon: Icons.check_box_outline_blank_outlined
  ),

  MenuItems(
    title: "UI Controls", 
    subTitle: "Una serie de controles en Flutter", 
    link: "/ui-controls", 
    icon: Icons.car_rental_outlined
  ),

  MenuItems(
    title: "Introducción a la app", 
    subTitle: "Pequeño tutorial de esta aplicación", 
    link: "/tutorial", 
    icon: Icons.accessible_rounded
  ),

  MenuItems(
    title: "InfiniteScroll y Pull", 
    subTitle: "Lista infinita y pull to refresh", 
    link: "/infinite", 
    icon: Icons.list_alt_rounded
  ),

  MenuItems(
    title: "Cambiar tema", 
    subTitle: "Cambiar tema de la aplicación", 
    link: "/theme-changer", 
    icon: Icons.color_lens_outlined
  ),

];
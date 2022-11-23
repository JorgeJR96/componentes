import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.access_alarm,
  'accessibility': Icons.account_box,
  'folder_open': Icons.card_travel,
  'donut_large': Icons.draw,
  'input': Icons.format_align_center,
  'tune': Icons.slideshow,
  'list': Icons.wrap_text,
};
Icon getIcon(String nombre) {
  return Icon(_icons[nombre], color: Colors.black);
}

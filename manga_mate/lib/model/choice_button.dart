import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Choice {
  final String name;
  final IconData icon;
  const Choice({required this.name, required this.icon});
}

const List<Choice> choices = const <Choice>[
  const Choice(name: 'Wi-fi', icon: Icons.wifi),
  const Choice(name: 'Bluetooth', icon: Icons.bluetooth),
  const Choice(name: 'Battery', icon: Icons.battery_0_bar),
  const Choice(name: 'Storage', icon: Icons.storage),
];

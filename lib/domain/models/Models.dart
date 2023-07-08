import 'package:flutter/material.dart';

class Direction {
  String name;
  String post;
  String photo;
  Direction(this.name, this.post, this.photo);
}

const String? garus = "lib/Assets/images/rector.jpg";
const String? konovalova = "lib/Assets/images/konovalova.jpg";
const String? orlova = "lib/Assets/images/orlova.jpg";

class MainMenu {
  String department;
  String member;
  Icon icon;
  MainMenu(this.department, this.member, this.icon);
}

final List<Direction> direction = <Direction>[
  Direction('Гарус Михаил Викторович', 'Директор', garus!),
  Direction('Коновалова Людмила Михайловна', 'Зам. директора по учебной работе',
      konovalova!),
  Direction('Орлова Раиса Александровна',
      'Зам. директора по профобучению\n и трудоустройству', orlova!),
];

final List<MainMenu> mainMenu = <MainMenu>[
  MainMenu(
      'Дирекция',
      'Гарус Михаил Викторович \n Коновалова Людмила Михайловна \n Орлова Раиса Александровна',
      const Icon(Icons.school)),
  MainMenu(
      'Дирекция',
      'Гарус Михаил Викторович \n Коновалова Людмила Михайловна \n Орлова Раиса Александровна',
      const Icon(Icons.school))
];

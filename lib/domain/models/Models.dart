import 'package:flutter/material.dart';

class Direction {
  String name;
  String post;
  String photo;
  Direction(this.name, this.post, this.photo);
}

class MainMenu {
  String department;
  String member;
  Widget icon;
  MainMenu(this.department, this.member, this.icon);
}

final List<Direction> direction = <Direction>[
  Direction(
      'Гарус Михаил Викторович', 'Директор', 'lib/Assets/images/rector.jpg'),
  Direction('Коновалова Людмила Михайловна', 'Зам. директора по учебной работе',
      'lib/Assets/images/konovalova.jpg'),
  Direction(
      'Орлова Раиса Александровна',
      'Зам. директора по профобучению\n и трудоустройству',
      'lib/Assets/images/orlova.jpg'),
];

// иконки для добавления в BoxDecoration
class MyWidget extends StatelessWidget {
  // конструктор этого класса, принимающий поле icon
  MyWidget(this.icon);

  // поле icon для нашей иконки
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 45,
          color: Colors.blueGrey[600],
        ),
      ],
    );
  }
}

final List<MainMenu> mainMenu = <MainMenu>[
  MainMenu(
      'Дирекция',
      'Гарус Михаил Викторович \n Коновалова Людмила Михайловна \n Орлова Раиса Александровна',
      MyWidget(Icons.school)),
  MainMenu('Отдел по учебной работе', 'Селезнева Олеся Александровна',
      MyWidget(Icons.book)),
  MainMenu('Деканат механико-технологического\n отделения',
      'Жилко Элина Владимировна', MyWidget(Icons.settings)),
  MainMenu('Деканат энергетического отделения', 'Агеева Надежда Николаевна',
      MyWidget(Icons.electrical_services)),
  MainMenu('Приемная коммисия', 'Трофимова Галина Борисовна',
      MyWidget(Icons.playlist_add_check)),
  MainMenu('Библиотека', 'Белых Екатерина Александровна',
      MyWidget(Icons.my_library_books)),
  MainMenu('Медицинский кабинет', 'Савина Ольга Владимировна',
      MyWidget(Icons.local_hospital)),
  MainMenu('Центр информационных технологий', 'Леонтьев Алексей Викторович',
      MyWidget(Icons.admin_panel_settings)),
  MainMenu('Хозяйственный отдел', 'Дрожжина Анна Владимировна',
      MyWidget(Icons.add_business)),
  MainMenu('Ремонтно-эксплуатационный отдел', 'Аксенова Татьяна Поликарповна',
      MyWidget(Icons.store)),
  MainMenu('Студенческая столовая', 'Жадобина Ольга Александровна',
      MyWidget(Icons.fastfood)),
  MainMenu('Производственные мастерские', 'Парфенов Василий Викторович',
      MyWidget(Icons.home_repair_service)),
];

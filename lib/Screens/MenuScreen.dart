import 'package:flutter/material.dart';
import 'package:direction_app/Colors.dart';
import 'package:direction_app/Screens/ListMenuScreen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BGColor,
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    //!1 карточка
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 50, 8, 0),
                      child: GestureDetector(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 5,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color.fromARGB(150, 13, 98, 172),
                                Color.fromARGB(149, 131, 88, 201),
                              ]),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(7, 7))
                              ]),
                          //Содержание основного контейнера ДИРЕКЦИИ
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(110, 40, 0, 25),
                            child: Text(
                              'Гарус Михаил Викторович \Коновалова Людмила Михайловна \Орлова Раиса Александровна',
                              style: TextStyle(
                                  color: AppColors.CardTextColor, fontSize: 17),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        //Нажатие на контейнер ДИРЕКЦИИ
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ListMenuScreen()));
                        },
                      ),
                    ),
                    //Длинный контейнер ДИРЕКЦИИ
                    Positioned(
                        left: 125,
                        height: 50,
                        width: 200,
                        top: 25,
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 204, 204, 204),
                                Color.fromARGB(255, 249, 249, 250),
                              ]),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(0, 0))
                              ]),
                          child: Center(
                            //Содержание длинного контейнера ДИРЕКЦИИ
                            child: Text('Дирекция',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 13, 98, 172),
                                    fontSize: 25)),
                          ),
                        )),
                    //Кваддратный контейнер ДИРЕКЦИИ
                    Positioned(
                        left: 12,
                        top: 10,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 249, 249, 250),
                                Color.fromARGB(255, 204, 204, 204)
                              ]),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(0, 0))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  Color.fromARGB(255, 204, 204, 204),
                                  Color.fromARGB(255, 249, 249, 250),
                                ]),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              //Содержание квадратного контейнера ДИРЕКЦИИ
                              child: Icon(
                                Icons.supervised_user_circle,
                                color: Color.fromARGB(255, 13, 98, 172),
                                size: 60,
                              ),
                            ),
                          ),
                        )),
                    //!2 карточка
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 260, 8, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 5,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(149, 131, 88, 201),
                              Color.fromARGB(255, 197, 88, 201)
                            ]),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(7, 7))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(110, 40, 0, 25),
                          //Содержание основного контейнера ОТДЕЛА ПО УЧЕБНОЙ РАБОТЕ
                          child: Text(
                            'Селезнева Олеся Александровна',
                            style: TextStyle(
                                color: AppColors.CardTextColor, fontSize: 17),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    //Длинный контейнер ОТДЕЛА ПО УЧЕБНОЙ РАБОТЕ
                    Positioned(
                        left: 125,
                        height: 50,
                        width: 225,
                        top: 235,
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 204, 204, 204),
                                Color.fromARGB(255, 249, 249, 250),
                              ]),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(0, 0))
                              ]),
                          child: Center(
                            //Содержание длинного контейнера ОТДЕЛА ПО УЧЕБНОЙ РАБОТЕ
                            child: Text('Отдел по учебной работе',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 131, 88, 201),
                                    fontSize: 17)),
                          ),
                        )),
                    //Квадратный контейнер ОТДЕЛА ПО УЧЕБНОЙ РАБОТЕ
                    Positioned(
                        left: 12,
                        top: 210,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 249, 249, 250),
                                Color.fromARGB(255, 204, 204, 204)
                              ]),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(0, 0))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  Color.fromARGB(255, 204, 204, 204),
                                  Color.fromARGB(255, 249, 249, 250),
                                ]),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              //Содержание квадратного контейнера ОТДЕЛА ПО УЧЕБНОЙ РАБОТЕ
                              child: Icon(
                                Icons.school,
                                color: Color.fromARGB(255, 131, 88, 201),
                                size: 60,
                              ),
                            ),
                          ),
                        )),
                    //!3 карточка
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 470, 8, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 5,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(255, 197, 88, 201),
                              Color.fromARGB(255, 236, 70, 134)
                            ]),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(7, 7))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(110, 40, 0, 25),
                          //Содержание основного контейнера МЕХАНИКО-ТЕХНОЛОГИЧЕСКОГО ОТДЕЛЕНИЯ
                          child: Text(
                            'Селезнева Олеся Александровна',
                            style: TextStyle(
                                color: AppColors.CardTextColor, fontSize: 17),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        left: 125,
                        height: 50,
                        width: 245,
                        top: 442,
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 204, 204, 204),
                                Color.fromARGB(255, 249, 249, 250),
                              ]),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(0, 0))
                              ]),
                          child: Center(
                            child: Text(
                              'механико-технологическое отделение',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 206, 52, 111),
                                  fontSize: 17),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    Positioned(
                        left: 12,
                        top: 420,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 249, 249, 250),
                                Color.fromARGB(255, 204, 204, 204)
                              ]),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(0, 0))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  Color.fromARGB(255, 204, 204, 204),
                                  Color.fromARGB(255, 249, 249, 250),
                                ]),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(
                                Icons.settings,
                                color: Color.fromARGB(255, 236, 70, 134),
                                size: 60,
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// child: Column(
//             children: [
//               Row(
//                 //Верхний ряд кнопок
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   GestureDetector(
//                     //первая кнопка
//                     child: Container(
//                       margin: EdgeInsets.all(15),
//                       width: MediaQuery.of(context).size.width / 2.5,
//                       height: MediaQuery.of(context).size.height / 4.8,
//                       decoration: BoxDecoration(
//                           color: AppColors.CardMenuColor,
//                           borderRadius: BorderRadius.circular(10)),
//                       //содержание кнопки
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           //иконка
//                           Container(
//                             margin: EdgeInsets.only(top: 25),
//                             height: 50,
//                             width: 50,
//                             decoration: BoxDecoration(
//                                 color: AppColors.CardIconColor,
//                                 borderRadius: BorderRadius.circular(100)),
//                             child: Icon(
//                               Icons.calendar_month_outlined,
//                               size: 30,
//                               color: AppColors.BGMenuColor,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             'Дирекция',
//                             style: TextStyle(
//                               fontSize: 20,
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     onTap: () {},
//                   ),
//                 ]
//               ),
//             ],
//           ),

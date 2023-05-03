import 'package:flutter/material.dart';
import 'package:direction_app/Colors.dart';
import 'ListMenuScreen.dart';

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
                    Positioned(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 50, 8, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 5,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color.fromARGB(137, 135, 147, 228),
                                Color.fromARGB(150, 13, 98, 172)
                              ]),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: Offset(7, 7))
                              ]),
                        ),
                      ),
                    ),
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
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text('Дирекция',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 13, 98, 172),
                                    fontSize: 25)),
                          ),
                        )),
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
                              boxShadow: []),
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
                                Icons.supervised_user_circle_outlined,
                                color: Color.fromARGB(255, 13, 98, 172),
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

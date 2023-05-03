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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      child: Container(
                        width: MediaQuery.of(context).size.width / 0.2,
                        height: MediaQuery.of(context).size.height / 4,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromARGB(255, 135, 147, 228),
                              Color.fromARGB(255, 10, 99, 177)
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
                    Positioned(
                        height: 50,
                        width: 50,
                        top: -20,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(20)),
                        ))
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

import 'package:direction_app/Colors.dart';
import 'package:flutter/material.dart';
import 'package:direction_app/Screens/ProfileScreen.dart';

class ListMenuScreen extends StatefulWidget {
  const ListMenuScreen({super.key});

  @override
  State<ListMenuScreen> createState() => _ListMenuScreenState();
}

class _ListMenuScreenState extends State<ListMenuScreen> {
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
                              'Директор',
                              style: TextStyle(
                                  color: AppColors.CardTextColor, fontSize: 17),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        //Нажатие на контейнер ДИРЕКЦИИ
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProfileScreen()));
                        },
                      ),
                    ),
                    //Длинный контейнер ДИРЕКЦИИ
                    Positioned(
                        left: 125,
                        height: 50,
                        width: 230,
                        top: 25,
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 204, 204, 204),
                                Color.fromARGB(255, 249, 249, 250),
                              ]),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            //Содержание длинного контейнера ДИРЕКЦИИ
                            child: Text('Гарус Михаил Викторович',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 13, 98, 172),
                                    fontSize: 17)),
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
                                //Содержание квадратного контейнера ДИРЕКЦИИ
                                image: DecorationImage(
                                  image: AssetImage(
                                      "lib/Assets/images/rector.jpg"),
                                  fit: BoxFit.cover,
                                ),
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
                              Color.fromARGB(150, 13, 98, 172),
                              Color.fromARGB(149, 131, 88, 201)
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
                            'Заместитель директора по учебной работе',
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
                        width: 247,
                        top: 235,
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 204, 204, 204),
                                Color.fromARGB(255, 249, 249, 250),
                              ]),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            //Содержание длинного контейнера ОТДЕЛА ПО УЧЕБНОЙ РАБОТЕ
                            child: Text('Коновалова Людмила Михайловна',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 13, 98, 172),
                                    fontSize: 14)),
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
                                image: DecorationImage(
                                  image: AssetImage(
                                      "lib/Assets/images/konovalova.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              //Содержание квадратного контейнера ОТДЕЛА ПО УЧЕБНОЙ РАБОТЕ
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
                              Color.fromARGB(150, 13, 98, 172),
                              Color.fromARGB(149, 131, 88, 201)
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
                            'Заместитель директора по профобучению и трудоустройству',
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
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              'Орлова Раиса Александровна',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 13, 98, 172),
                                  fontSize: 16),
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
                                image: DecorationImage(
                                  image: AssetImage(
                                      "lib/Assets/images/orlova.jpg"),
                                  fit: BoxFit.cover,
                                ),
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

import 'package:direction_app/Colors.dart';
import 'package:direction_app/domain/models/Models.dart';
import 'package:flutter/material.dart';
import 'package:direction_app/screens/ProfileScreen.dart';

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
        appBar: AppBar(
          title: Text('dsfsdfs'),
        ),
        body: ListView.builder(
            itemCount: direction.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                  },
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(5, 5))
                        ]),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11.5),
                          child: Container(
                            height: 77,
                            width: 77,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.grey[400]),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        image: DecorationImage(
                                          image: ExactAssetImage(
                                              direction[index].photo),
                                          fit: BoxFit.cover,
                                        )),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Positioned(
                                          top: 54.5,
                                          left: 54.5,
                                          child: Container(
                                              height: 15,
                                              width: 15,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: Colors.green)),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                direction[index].name,
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                direction[index].post,
                                style: const TextStyle(fontSize: 12),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            })

        /*
      backgroundColor: AppColors.BGColor,
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: <Widget>[
                //!1 карточка
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 25, left: 0, right: 0, top: 8),
                  child: Container(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
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
                                padding:
                                    const EdgeInsets.fromLTRB(110, 40, 0, 25),
                                child: Text(
                                  'Директор',
                                  style: TextStyle(
                                      color: AppColors.CardTextColor,
                                      fontSize: 17),
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
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),*/
        );
  }
}

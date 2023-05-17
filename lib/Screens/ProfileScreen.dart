import 'package:flutter/material.dart';
import 'package:direction_app/Colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Stack(
            children: <Widget> [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.0,
                decoration: BoxDecoration(
                  //Смена цвета верхнего правого уголка
                  color: Colors.grey[350],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.0,
                decoration: BoxDecoration(
                  color: AppColors.GradientStart,
                  image: DecorationImage(
                image: AssetImage("lib/Assets/images/rector.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.blueGrey.withOpacity(0.2), BlendMode.dstATop),
                  ),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(70) ),
                ),
                child: Column(
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.only(top: 280, left: 30),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                        'Гарус Михаил Викторович',
                        style: TextStyle(
                          fontSize: 21,
                          color: AppColors.CardMenuColor,
                        ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 30),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                        'Дирекция',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.CardMenuColor.withOpacity(0.9)
                          ),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                //Смена цвета нижнего левого уголка
                color: Color.fromARGB(255, 59, 78, 87),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                //Смена цвета нижнего контейнера
                color: Colors.grey[350],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                )
              ),
              //Контейнер кнопки телефона
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 7.6,
                    height: MediaQuery.of(context).size.height / 15,


                    //Включить при разраьботке нижнего контейнера  
                    //decoration: BoxDecoration(color: Colors.red.withOpacity(0.7)),
                    

                    //Контейнер иконки телефонаы
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white70
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(60),
                        ),

                        color: Colors.white70,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                              spreadRadius: 3,
                              blurRadius: 1,
                              offset: Offset(0, 0.5), 
                          ),
                          ],
                        ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.call,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                    ),
                ),
              ),
            ),
            
          ),
          // Текст для первого контейнера
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 0),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 10.5,
                decoration: BoxDecoration(
                  //Смена цвета нижнего контейнера


                  //Включить при разраьботке нижнего контейнера  
                  //color: Colors.red.withOpacity(0.3),


                  // borderRadius: BorderRadius.only(
                  //   //topLeft: Radius.circular(70),
                  // )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 150 ),
                  child: Center(
                    child: Text(
                      'Вызов',
                      style: TextStyle(fontSize: 16),
                      ),
                  ),
                ),
              ),
            ),
          ),


          
          
          
          // Второй контейнер
          Padding(
            padding: const EdgeInsets.only(top: 240, left: 0),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 10.5,
                decoration: BoxDecoration(
                  //Смена цвета нижнего контейнера
                  
                  

                  //Включить при разраьботке нижнего контейнера  
                  //color: Colors.red.withOpacity(0.3),



                  borderRadius: BorderRadius.only(
                    //topLeft: Radius.circular(70),
                  )
                ),
                //Контейнер кнопки телефона
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.5, left: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 7.6,
                      height: MediaQuery.of(context).size.height / 15,
                      
                      
                      
                      //Включить при разраьботке нижнего контейнера  
                      //decoration: BoxDecoration(color: Colors.red.withOpacity(0.7)),
                      



                      //Контейнер иконки телефонаы
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white70
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(60),
                          ),
          
                          color: Colors.white70,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.9),
                                spreadRadius: 3,
                                blurRadius: 1,
                                offset: Offset(0, 0.5), 
                            ),
                            ],
                          ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.call,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                      ),
                  ),
                ),
              ),
              
            ),
          ),
        ],
      ),
    ),
    );
  }
}
      // backgroundColor: AppColors.GradientStart,
      // body: Column(
      //   children: [
      //     Container(
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
      //         color: AppColors.GradientStart,
      //         image: DecorationImage(
      //           image: AssetImage("lib/Assets/images/rector.jpg"),
      //           fit: BoxFit.cover,
      //           colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop)
      //           ),
      //       ),
      //       width: MediaQuery.of(context).size.width,
      //       height: MediaQuery.of(context).size.height / 2.0,
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //             children: <Widget> [
      //               Flexible(
      //                 flex: 3,
      //                 fit: FlexFit.loose,
      //                 child: Container(

      //                 margin: EdgeInsets.symmetric(horizontal: 20,vertical: 60),
      //                 alignment: Alignment.centerLeft,
      //                 child: Text('Дирекция',
      //                 style: TextStyle(
      //                 fontSize: 30.0,color: AppColors.CardMenuColor,
      //                 ),
      //                 ),
      //                 ),
                      
      //               ),
                    
      //                 Flexible(
      //                 flex: 1,
      //                 fit: FlexFit.loose,
      //                 child: Container(
      //                 alignment: Alignment.centerLeft,
      //                 margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10 ),
      //                 child: GestureDetector(
      //                   child: Text('Гарус Михаил Викторович \n+8 (3953) 400-011',
      //                   style: TextStyle(
      //                     fontSize: 20.0,
      //                     color: AppColors.CardMenuColor,
                      
      //                   ),
      //                   ),
      //                 ),
                                
                       
      //                 ),
      //               ),
      //                   Container(
      //                     height: 60,
      //                     width: 60,
      //                     margin: EdgeInsets.symmetric(vertical: 10 ),
                          
      //                     decoration: BoxDecoration(
                            
      //                         gradient: const LinearGradient(colors: [
      //                           Color.fromARGB(255, 249, 249, 250),
      //                           Color.fromARGB(255, 204, 204, 204)
      //                         ]),
                              
      //                         borderRadius: BorderRadius.circular(100),
      //                         boxShadow: []), 
      //                     child: Padding(
      //                       padding: const EdgeInsets.all(10),
      //                       child: Container(
      //                           child: Row(
      //                             children: <Widget>[
      //                             Padding(padding: const EdgeInsets.all(4)),
      //                             Icon(
      //                             Icons.call,
      //                             color: AppColors.GradientStart,
      //                             size: 23,
      //                             )// 'Позвонить',
      //                             // textAlign: TextAlign.center,
      //                             // style: TextStyle(
      //                             //   fontSize: 18.0,
      //                             //   color: AppColors.GradientStart
      //                             //),
      //                             ],
      //                             ),

      //                         height: 75,
      //                         width: 75,
      //                         decoration: BoxDecoration(
      //                           gradient: const LinearGradient(colors: [
      //                             Color.fromARGB(255, 204, 204, 204),
      //                             Color.fromARGB(255, 249, 249, 250),
      //                           ]),
      //                           borderRadius: BorderRadius.circular(100),
      //                         ),
      //                       ),
                            
      //                     ),
                          
      //                   ),
                        
      //             ],
      //           ),
                

            
      //       ),
      //       Container(
      //         alignment: Alignment.bottomCenter,
      //       width: MediaQuery.of(context).size.width,
      //       height: MediaQuery.of(context).size.height / 2,
      //         decoration: BoxDecoration(
      //           gradient: const LinearGradient(colors: [
      //             Color.fromARGB(137, 135, 147, 228),
      //             Color.fromARGB(150, 13, 98, 172)],),
      //             color: AppColors.GradientStart, 
      //             borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
      //             ),
                  
      //       )
      //   ],
      // ),
        



//     );
//   }
// }













        
        
      // child: Container(
      //   decoration: BoxDecoration(
      //     border: Border.all(),
      //     color: AppColors.BGMenuColor
      //   ),
      //   margin: const EdgeInsets.only(top: 100),
      //   padding: const EdgeInsets.all(0.0),
      //   child: Text('ergerg',
      //   style: TextStyle(color: AppColors.CardmenuColor),
        //),
          
        //), 

      // backgroundColor: AppColors.CardmenuColor,
      // body: Container(
      //   width: MediaQuery.of(context).size.width,
      //   height: MediaQuery.of(context).size.height / 2.0,
      //   decoration: BoxDecoration( 
      //     borderRadius: BorderRadius.circular(20),
      //     color: AppColors.BGMenuColor,
      //     ),
      //     child: Text('3523'),
    //   ),





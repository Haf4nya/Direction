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
    return Scaffold(
      backgroundColor: AppColors.GradientStart,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
              color: AppColors.GradientStart,
              image: DecorationImage(
                image: AssetImage("lib/Assets/images/rector.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop)
                ),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Flexible(
                      flex: 3,
                      fit: FlexFit.loose,
                      child: Container(

                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 60),
                      alignment: Alignment.centerLeft,
                      child: Text('Дирекция',
                      style: TextStyle(
                      fontSize: 30.0,color: AppColors.CardMenuColor,
                      ),
                      ),
                      ),
                      
                    ),
                    
                      Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10 ),
                      child: GestureDetector(
                        child: Text('Гарус Михаил Викторович \n+8 (3953) 400-011',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: AppColors.CardMenuColor,
                      
                        ),
                        ),
                        onTap: () async {
                                            // final Uri launchUri = Uri(
                                            //     scheme: 'tel', path: '${restaurant.tel}');
                                            // await launch(launchUri.toString());
                                          },
                      ),
                                
                       
                      ),
                    ),
                        Container(
                          height: 60,
                          width: 60,
                          margin: EdgeInsets.symmetric(vertical: 10 ),
                          
                          decoration: BoxDecoration(
                            
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 249, 249, 250),
                                Color.fromARGB(255, 204, 204, 204)
                              ]),
                              
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: []), 
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                                child: Row(
                                  children: <Widget>[
                                  Padding(padding: const EdgeInsets.all(4)),
                                  Icon(
                                  Icons.call,
                                  color: AppColors.GradientStart,
                                  size: 23,
                                  )// 'Позвонить',
                                  // textAlign: TextAlign.center,
                                  // style: TextStyle(
                                  //   fontSize: 18.0,
                                  //   color: AppColors.GradientStart
                                  //),
                                  ],
                                  ),

                              height: 75,
                              width: 75,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  Color.fromARGB(255, 204, 204, 204),
                                  Color.fromARGB(255, 249, 249, 250),
                                ]),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              // child: Icon(
                              //   Icons.supervised_user_circle_outlined,
                              //   color: Colors.deepPurple[700],
                              //   size: 50,
                              // ),
                            ),
                            
                          ),
                          
                        ),
                        
                  ],
                ),
                

            // child: Text('ergerg',
            // textAlign: TextAlign.start,  
            // style: TextStyle(
            // color: AppColors.CardmenuColor,
            
            ),
            Container(
              alignment: Alignment.bottomCenter,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color.fromARGB(137, 135, 147, 228),
                  Color.fromARGB(150, 13, 98, 172)],),
                  color: AppColors.GradientStart, 
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
                  ),
                  
            )
        ],
      ),
        

        
        
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
    );
  }
}


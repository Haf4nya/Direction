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
      backgroundColor: AppColors.CardmenuColor,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.BGMenuColor,
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [
                  Container(
                  margin: EdgeInsets.symmetric(horizontal: 35, vertical: 80),
                  child: Text('Дирекция',
                  style: TextStyle(
                  fontSize: 30.0,color: AppColors.CardmenuColor,
                  ),
                  ),
                  ),
                  Container(

                  margin: EdgeInsets.symmetric(horizontal:35,vertical: 70 ),
                  child: GestureDetector(
                    child: Text('Гарус Михаил Викторович \n+8 (3953) 400-011',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: AppColors.CardmenuColor,
                  
                    ),
                    ),
                    onTap: () async {
                                        // final Uri launchUri = Uri(
                                        //     scheme: 'tel', path: '${restaurant.tel}');
                                        // await launch(launchUri.toString());
                                      },
                  ),
            
               
                  ),
                ],
              ),


            // child: Text('ergerg',
            // textAlign: TextAlign.start,  
            // style: TextStyle(
            // color: AppColors.CardmenuColor,
            
            ),
            Container()
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


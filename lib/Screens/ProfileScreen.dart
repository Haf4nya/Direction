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
      backgroundColor: AppColors.CardMenuColor,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.GradientStart,
              image: DecorationImage(
                image: AssetImage("flutterlogo"),
                ),
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Flexible(
                      flex: 3,
                      fit: FlexFit.loose,
                      child: Container(

                      margin: EdgeInsets.symmetric(vertical: 70),
                      alignment: Alignment.topCenter,
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
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.symmetric(vertical: 10 ),
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
                    Container(width: MediaQuery.of(context).size.width / 3.0,
            height: MediaQuery.of(context).size.height / 26.0,
            margin: EdgeInsets.symmetric(vertical: 15 ),
              color: Colors.amber,)
                  ],
                ),
                

            // child: Text('ergerg',
            // textAlign: TextAlign.start,  
            // style: TextStyle(
            // color: AppColors.CardmenuColor,
            
            ),
            Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 20.0,
              color: Colors.red,
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


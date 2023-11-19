import 'package:flutter/widgets.dart';
import 'package:multichatapp/component/button.dart';
import 'package:multichatapp/const/const.dart';

class UserWiseprfile extends StatefulWidget {
  const UserWiseprfile({super.key});

  @override
  State<UserWiseprfile> createState() => _UserWiseprfileState();
}

class _UserWiseprfileState extends State<UserWiseprfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Name".text.make(),
      ),
      body: SingleChildScrollView(
       physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
             Container(
           height: context.screenHeight * 1,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgbackgorund), fit: BoxFit.fill)),
                      child:   SafeArea(
                        
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                                children: [
                                  
                               const   Padding(
                                    padding:  EdgeInsets.symmetric(vertical: 20),
                                ),
                               
                               Image.asset(personimg,width: 70,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).white.make(),
                               20.heightBox,
                               SizedBox(
                                width: context.screenWidth-200,
                                child: ButtonScreen(title: "Invite Friend",buttoncolor: Colors.blue, onpress: (){}))
                              
                           
                                
                            
                                 
                                    
                                          
                                ],
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
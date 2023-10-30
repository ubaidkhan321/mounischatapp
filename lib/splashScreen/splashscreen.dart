import 'package:multichatapp/Auth/Login.dart';
import 'package:multichatapp/component/applogo.dart';
import 'package:multichatapp/const/const.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  chnageScreen(){
     Future.delayed( const Duration(seconds: 3),(){
       Get.to(()=> const LoginScreen());
     });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chnageScreen();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: green,

      body: Column(
        children: [
       const Align(
          alignment: Alignment.topLeft,
          child:   Image(image: AssetImage(icsplash),width: 300,)),
        20.heightBox,
        applogo(),
          mutlichat.text.white.fontWeight(FontWeight.bold).make(),

          const Spacer(),
          appversion.text.white.make(),
          10.heightBox, 

        ],
      ),
    );
  }
}
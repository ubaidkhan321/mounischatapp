

import 'package:multichatapp/component/button.dart';
import 'package:multichatapp/component/firebase_controller.dart';
import 'package:multichatapp/const/const.dart';
import 'package:get/get.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
   var controller = Get.put(AuthController());
    bool isloading = false;
    var conpass = TextEditingController();
    var passwordcontroller = TextEditingController();
    bool isobs = true;
    final keyform = GlobalKey<FormState>();
    
    
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 126, 80),
        title: "Forget password".text.white.fontWeight(FontWeight.bold).make()
      ),
      body: 
          Container(
      height: context.screenHeight *1,
      width: double.infinity,
    decoration: const BoxDecoration(
      
      
      image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-vector/forgot-password-concept-illustration_114360-1010.jpg"),fit: BoxFit.fill)
    ),
    child: Column(
      
      children: [
        60.heightBox,
        Image.asset(icchat,color: Colors.green,).box.white.roundedSM.padding( const EdgeInsets.all(8)).make(),
        loginname.text.white.fontWeight(FontWeight.bold).make(),
        15.heightBox,
       Column(
        children: [
          //TextField
        //  customtextfield(title: email,hinttext: emailhint,icon: const Icon(Icons.email),ispass: false,controller: emailcontroller),
         Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "Password".text.color(black).size(16).make(),
            Form(
              child: TextFormField(
                key: keyform,
                
                controller: conpass,
               validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your email';
                      }
                      
                      return null;
                    },
               
                decoration: const InputDecoration(
                  hintText: passwordhint,
                  suffixIcon: Icon(Icons.email),
                   hintStyle:  TextStyle(
                    fontStyle: FontStyle.normal,
                    color: textfieldGrey,
                   ),
                   border: InputBorder.none,
                   fillColor: lightGrey,
                   filled: true,
                   isDense: true,
                   focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: redColor,
                    )
                   )
                   
                ),
              ),
            ),
            10.heightBox
          ],
        ),
         
         
          Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            conformpassword.text.color(black).size(16).make(),
            Form(
              child: TextFormField(
                controller: passwordcontroller,
                validator: (value){
                  if(value!.isEmpty){
                    return "Enter  Value";
                  }
                  
                  return null;
                 
                },
                obscureText: isobs,
                decoration:   InputDecoration(
                  hintText: passwordhint,
                  suffixIcon: InkWell(
                    onTap: (){
                      setState(() {
                        isobs = !isobs;
                      });
                      
                    },
                    
                    child: Icon( isobs ? Icons.visibility_off : Icons.visibility)), 
                   hintStyle: const  TextStyle(
                    fontStyle: FontStyle.normal,
                    color: textfieldGrey,
                   ),
                   border: InputBorder.none,
                   fillColor: lightGrey,
                   filled: true,
                   isDense: true,
                   focusedBorder: const  OutlineInputBorder(
                    borderSide: BorderSide(
                      color: redColor,
                    )
                   )
                   
                ),
              ),
            ),
            10.heightBox
          ],
        ),
          
          
          
          
          //customtextfield(title: password,hinttext: passwordhint,icon: const Icon(Icons.visibility_off_outlined),ispass: true,controller: passwordcontroller),
          
         
          //Login Button..
         ButtonScreen(title: "Confirm",isloading: isloading, onpress: ()async{
       
            
          
          


         }).box.width(context.screenWidth-50).make(),
        
        ],
       ).box.white.roundedSM.padding( const EdgeInsets.all(8.0)).width(context.screenWidth-70).shadowSm.make(),

       

      ],
    ),
          )
    );

       
  }
}
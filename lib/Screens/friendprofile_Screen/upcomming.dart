import 'package:flutter/widgets.dart';
import 'package:multichatapp/const/const.dart';

class UpcommingFriendScreen extends StatefulWidget {
  const UpcommingFriendScreen({super.key});

  @override
  State<UpcommingFriendScreen> createState() => _UpcommingFriendScreenState();
}

class _UpcommingFriendScreenState extends State<UpcommingFriendScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: "Upcomming Request".text.size(30).make(),
          )
        ],
      ),
    );
  }
}
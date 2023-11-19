import 'package:flutter/widgets.dart';
import 'package:multichatapp/const/const.dart';

class RequestFriendScreen extends StatefulWidget {
  const RequestFriendScreen({super.key});

  @override
  State<RequestFriendScreen> createState() => _RequestFriendScreenState();
}

class _RequestFriendScreenState extends State<RequestFriendScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: "Friend Request".text.size(30).make(),
          )
        ],
      ),
    );
  }
}
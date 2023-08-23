import 'package:flutter/material.dart';

void showSnackBar(BuildContext context,String msg){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        children: [
          const Icon(Icons.access_alarm,
            color:Colors.blue
          ),
          const SizedBox(width: 4),
          Text("${msg}",
            style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,  //设置背景颜色
      shape: const StadiumBorder(
          side: BorderSide(color: Colors.blue, width: 2)
      ),
      duration: const Duration(   //设置显示的时间
        days: 0,
        hours: 0,
        minutes: 0,
        seconds: 30,
        milliseconds: 0,
        microseconds: 0,
      ),
    // animation: ,  //设置显示时候的动画
    action: SnackBarAction(
        label: "关闭", 
        textColor: Colors.cyan,
        onPressed:(){
          
        }
    ),
  ));
}
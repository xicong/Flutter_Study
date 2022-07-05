import 'package:flutter/widgets.dart';

typedef AsynchronousTasks = Future<dynamic> Function();
typedef AsynchronousResults = Widget  Function(dynamic data);

///页面状态  加载中  加载错误  加载成功   数据为空   加载出错
class PageStateCallBack{
  AsynchronousTasks asynchronousTasks;
  AsynchronousResults asynchronousResults;
  PageStateCallBack({required this.asynchronousTasks,required this.asynchronousResults});
}
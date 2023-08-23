//导入dart
import 'package:flutter/material.dart';
import 'package:flutter_study/refresh/learn_refrsh.dart';
import 'package:flutter_study/widgets/learn_widgets.dart';
import 'anim/learn_animation.dart';
import 'callback/PageStateCallBack.dart';
import 'utils/listitem_utils.dart';
import 'utils/title_utils.dart';
import 'utils/page_status_weight_utils.dart';
import 'dart_grammar_knowledge/dart_knowledge_list.dart';
import 'dialog/learn_dialog.dart';
import 'layout/learn_layout.dart';
import 'list/learn_list.dart';
import 'main_drawer.dart';
import 'network/learn_network.dart';

/*
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/
void main() {
  //设置debugPaintSizeEnabled为true来更直观的调试布局问题
//  debugPaintSizeEnabled = true;
  //MaterialApp  必须有home不然报错
  //MaterialApp 直接用路由跳转会报错，所以习惯行性的加一层
  runApp(MaterialApp(
    home: const Main(),
    theme: ThemeData(
      primaryColor: Colors.blue,
      primarySwatch: Colors.blue,
    ),
  ));
}

/// StatelessWidget 无状态控件 不可变状态控件 通过构建来描述界面的一部分
/// StatefulWidget 有状态控件
class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MainApp();
  }
}

/// StatefulWidget 有状态控件
class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MainApp();
  }
}

class _MainApp extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //页面的背景色
      appBar: CommTitle.setHomeMaterialAppBar(context, "Flutter学习"),
      drawer: const mainDrawer(),
      body: PageStatusWeight().showRequestStatus(PageStateCallBack(
          asynchronousTasks: () {return initData();}, 
          asynchronousResults: (data) {return showResultWeight(data);})),
    );
  }
  
  Future<List<MainEntity>> initData() {
    return Future<List<MainEntity>>(() {
      return [
        MainEntity(
            name: "Dart知识点",
            description: "一些dart语法相关的知识点记录",
            widget: const DartKnowledgeList()),
        MainEntity(
            name: "Widgets",
            description: "Android的基础控件",
            widget: const LearnWidgets()),
        MainEntity(
            name: "Layout",
            description: "Android的各种布局控件",
            widget: LearnLayout()),
        MainEntity(
            name: "Dialog",
            description: "Android的各种Dialog",
            widget: LearnDialog()),
        MainEntity(
            name: "List", description: "Android的各种列表", widget: LearnList()),
        MainEntity(
            name: "Anim",
            description: "Android的各种动画",
            widget: LearnAnimation()),
        MainEntity(
            name: "Refrsh", description: "Android的各种刷新", widget: LearnRefrsh()),
        MainEntity(
            name: "Network",
            description: "Android的网络相关",
            widget: LearnNetwork()),
      ];
    });
  }

  Widget showResultWeight(data) {
    var mData = data as List<MainEntity>;
    return ListView.builder(
        itemCount: mData.length,
        itemBuilder: (context, index) {
          return CommListItem.setMaterialListItem(context, mData[index].name,
              mData[index].description, mData[index].widget);
        });
  }
}

class MainEntity {
  String name;
  String description;
  Widget widget;
  MainEntity({required this.name, required this.description, required this.widget});
}

import 'package:flutter/material.dart';
import 'package:flutter_study/utils/title_utils.dart';

import '../../comm/page/CodePreview.dart';

const double kColorItemHeight = 48.0;

class Palette {
  Palette({required this.name, required this.primary, required this.accent, this.threshold = 900});
  final String name;
  final MaterialColor primary;

  /// MaterialAccentColor：定义单一的色滴，颜色的阴影用索引表示，
  /// 索引比较小的颜色比较浅，较大的索引较暗

  final MaterialAccentColor? accent;
  final int
  threshold; // titles for indices > threshold are white, otherwise black
  bool get isValid => primary != null;
}

final List<Palette> allPalettes = <Palette>[
  Palette(
      name: 'RED',
      primary: Colors.red,
      accent: Colors.redAccent,
      threshold: 300),
  Palette(
      name: 'PINK',
      primary: Colors.pink,
      accent: Colors.pinkAccent,
      threshold: 200),
  Palette(
      name: 'PURPLE',
      primary: Colors.purple,
      accent: Colors.purpleAccent,
      threshold: 200),
  Palette(
      name: 'DEEP PURPLE',
      primary: Colors.deepPurple,
      accent: Colors.deepPurpleAccent,
      threshold: 200),
  Palette(
      name: 'INDIGO',
      primary: Colors.indigo,
      accent: Colors.indigoAccent,
      threshold: 200),
  Palette(
      name: 'BLUE',
      primary: Colors.blue,
      accent: Colors.blueAccent,
      threshold: 400),
  Palette(
      name: 'LIGHT BLUE',
      primary: Colors.lightBlue,
      accent: Colors.lightBlueAccent,
      threshold: 500),
  Palette(
      name: 'CYAN',
      primary: Colors.cyan,
      accent: Colors.cyanAccent,
      threshold: 600),
  Palette(
      name: 'TEAL',
      primary: Colors.teal,
      accent: Colors.tealAccent,
      threshold: 400),
  Palette(
      name: 'GREEN',
      primary: Colors.green,
      accent: Colors.greenAccent,
      threshold: 500),
  Palette(
      name: 'LIGHT GREEN',
      primary: Colors.lightGreen,
      accent: Colors.lightGreenAccent,
      threshold: 600),
  Palette(
      name: 'LIME',
      primary: Colors.lime,
      accent: Colors.limeAccent,
      threshold: 800),
  Palette(name: 'YELLOW', primary: Colors.yellow, accent: Colors.yellowAccent),
  Palette(name: 'AMBER', primary: Colors.amber, accent: Colors.amberAccent),
  Palette(
      name: 'ORANGE',
      primary: Colors.orange,
      accent: Colors.orangeAccent,
      threshold: 700),
  Palette(
      name: 'DEEP ORANGE',
      primary: Colors.deepOrange,
      accent: Colors.deepOrangeAccent,
      threshold: 400),
  Palette(name: 'BROWN', primary: Colors.brown, threshold: 200, accent: null),
  Palette(name: 'GREY', primary: Colors.grey, threshold: 500, accent: null),
  Palette(name: 'BLUE GREY', primary: Colors.blueGrey, threshold: 500, accent: null),
];

class ColorItem extends StatelessWidget {
  final int index;
  final Color color;
  final String prefix;
  const ColorItem({Key? key, required this.index, required this.color, this.prefix = ""}) : super(key: key);

  String colorString() =>
      "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      child: Container(
        height: kColorItemHeight,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        color: color,
        child: SafeArea(
          top: false,
          bottom: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('$prefix$index'),
              Text(colorString()),
            ],
          ),
        ),
      ),
    );
  }
}

class PaletteTabView extends StatelessWidget {
  final Palette colors;
  const PaletteTabView({Key? key,required this.colors}) : super(key: key);
  static const List<int> primaryKeys = <int>[
    50,
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900
  ];
  static const List<int> accentKeys = <int>[100, 200, 400, 700];
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final TextStyle whiteTextStyle = textTheme.bodyText1!.copyWith(color: Colors.white);
    final TextStyle blackTextStyle = textTheme.bodyText2!.copyWith(color: Colors.black);
    final List<Widget> colorItems = primaryKeys.map<Widget>((int index) {
      return DefaultTextStyle(
        style: index > colors.threshold ? whiteTextStyle : blackTextStyle,
        child: ColorItem(index: index, color: colors.primary),
      );
    }).toList();
    colorItems.addAll(accentKeys.map<Widget>((int index) {
      return DefaultTextStyle(
        style: index > colors.threshold ? whiteTextStyle : blackTextStyle,
        child:
        ColorItem(index: index, color: colors.accent!, prefix: 'A', key: null,),
      );
    }).toList());
    return ListView(
      itemExtent: kColorItemHeight,
      children: colorItems,
    );
  }
}

class LearnMaterialAccentColor extends StatefulWidget{
  const LearnMaterialAccentColor({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnMaterialAccentColor();
  }
}

class _LearnMaterialAccentColor extends State<LearnMaterialAccentColor> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      child: DefaultTabController(
        length: allPalettes.length,
        child: Scaffold(
          appBar: CommTitle.setMaterialAppBar(context, "MaterialAccentColor", Callback(codeOnTap: (){
            CodePreview.go(context, "MaterialAccentColor", "lib/widgets/material/LearnMaterialAccentColor.dart");
          })),
          body: TabBarView(
            children: allPalettes.map<Widget>((Palette colors) {
              return PaletteTabView(colors: colors, key: null,);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
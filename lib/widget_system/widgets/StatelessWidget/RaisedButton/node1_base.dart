import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020-03-22
/// contact me by email 1981462002@qq.com
/// 说明:

//    {
//      "widgetId": 26,
//      "priority": 1,
//      "name": "ElevatedButton点击事件",
//      "subtitle": "【color】: 颜色   【Color】\n"
//          "【splashColor】: 水波纹颜色   【Color】\n"
//          "【elevation】: 影深   【double】\n"
//          "【child】: 子组件   【Widget】\n"
//          "【textColor】: 子组件文字颜色   【Color】\n"
//          "【highlightColor】: 长按高亮色   【Color】\n"
//          "【padding】: 内边距   【EdgeInsetsGeometry】\n"
//          "【onPressed】: 点击事件   【Function】",
//    }

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          )),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          overlayColor: MaterialStateProperty.resolveWith(
            (states) {
              return states.contains(MaterialState.hovered)
                  ? Colors.green
                  : states.contains(MaterialState.pressed)
                      ? const Color(0xffF88B0A)
                      : null;
            },
          ),
          elevation: MaterialStateProperty.all(5),
          padding: MaterialStateProperty.all(const EdgeInsets.all(8))),
      onPressed: () {},
      child: const Text(
        "ElevatedButton",
        style: TextStyle(color: Color(0xffFfffff)),
      ),
    );
  }
}

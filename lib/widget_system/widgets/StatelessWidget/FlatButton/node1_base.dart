/// create by 张风捷特烈 on 2020-03-26
/// contact me by email 1981462002@qq.com
/// 说明:
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
        elevation: MaterialStateProperty.all(0),
        overlayColor: MaterialStateProperty.resolveWith(
          (states) {
            return states.contains(MaterialState.hovered)
                ? Colors.green
                : states.contains(MaterialState.pressed)
                    ? const Color(0xffF88B0A)
                    : null;
          },
        ),
      ),
      onPressed: () => {},
      child: const Text(
        "TextButton",
        style: TextStyle(color: Color(0xffFfffff)),
      ),
    );
  }
}

import 'package:core/widgets/fixed_text.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    this.btnColor,
    this.title = '',
    this.width = double.infinity,
    this.height = 50,
    this.titleStyle,
    this.titleWidget,
    this.onTap,
    this.borderRadius,
    this.btnBorder,
  }) : super(key: key);

  final String title;

  final Color? btnColor;

  final double width;

  final double height;

  final TextStyle? titleStyle;

  final Widget? titleWidget;

  final VoidCallback? onTap;

  final BorderRadius? borderRadius;

  final Color? btnBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: borderRadius ?? BorderRadius.circular(4),
        border: Border.all(color: btnBorder ?? btnColor!),
      ),
      height: height,
      width: width,
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.translucent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: titleWidget ??
                FixedText(
                  title,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: titleStyle ??
                      const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                ),
          ),
        ),
      ),
    );
  }
}

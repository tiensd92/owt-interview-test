import 'package:flutter/material.dart';

class CommonActionButton extends StatelessWidget {
  const CommonActionButton({
    super.key,
    required this.title,
    this.icon,
    this.padding,
    this.onPressed,
    this.backgroundColor,
    this.textStyle,
  });

  final VoidCallback? onPressed;
  final Widget title;
  final Widget? icon;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: padding ??
              const EdgeInsets.symmetric(
                horizontal: 12,
              ),
          elevation: 0,
          disabledBackgroundColor: const Color(0xFFBDBDBD),
          backgroundColor: backgroundColor ?? const Color(0xff0BCE83),
          alignment: Alignment.center,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            title,
            if (icon != null) ...[
              const SizedBox(
                width: 6,
              ),
              icon!,
            ],
          ],
        ),
      ),
    );
  }
}

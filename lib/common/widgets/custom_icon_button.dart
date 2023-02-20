import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/extension/custom_theme_extension.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final double? minWidth;
  final Color? background;
  final BoxBorder? border;

  const CustomIconButton(
      {Key? key,
      required this.onTap,
      required this.icon,
      this.iconColor,
      this.iconSize,
      this.border,
      this.background,
      this.minWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: background,
        shape: BoxShape.circle,
        border: border,
      ),
      child: IconButton(
          onPressed: onTap,
          splashColor: Colors.transparent,
          splashRadius: (minWidth ?? 45) - 25,
          iconSize: iconSize ?? 22,
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(minWidth: minWidth ?? 45, minHeight: minWidth ?? 45),
          icon: Icon(
            icon,
            color: iconColor ?? context.theme.greyColor,
          )),
    );
  }
}

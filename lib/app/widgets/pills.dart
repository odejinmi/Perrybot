import 'package:flutter/material.dart';

class Pills extends StatefulWidget {
  const Pills(
      {required this.child,
      this.avatar,
      this.onTap,
      this.onLongPress,
      this.decoration,
      this.width,
      this.height,
      Key? key,
      this.behavior = HitTestBehavior.opaque,
      this.disabled = false,
      this.onTapDown,
      this.onTapUp,
      this.onTapCancel,
      this.padding})
      : super(key: key);
  final Widget child;
  final Widget? avatar;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final BoxDecoration? decoration;
  final HitTestBehavior behavior;
  final bool disabled;
  final Function? onTapDown;
  final Function? onTapUp;
  final Function? onTapCancel;

  @override
  State<Pills> createState() => _PillsState();
}

class _PillsState extends State<Pills> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          padding: widget.padding,
          width: widget.width,
          height: widget.height,
          decoration: widget.decoration,
          child: Row(
            children: [
              widget.child,
              SizedBox(
                child: widget.avatar,
              )
            ],
          )),
    );
  }
}

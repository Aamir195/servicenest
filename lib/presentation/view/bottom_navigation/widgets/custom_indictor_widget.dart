import 'package:flutter/material.dart';
import 'package:service_nest_app/common/color.dart';


class TopIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _TopIndicatorBox();
  }
}

class _TopIndicatorBox extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    Paint paint = Paint()
      ..color = AppColor.orange
      ..strokeWidth = 0
      ..isAntiAlias = true;

    // canvas.drawLine(offset, Offset(cfg.size!.width + offset.dx, 0), paint);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final Image icon;
  final VoidCallback onTap;

  const AppButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black12,
      onTap: () {
        onTap();
      },
      child: Container(
        alignment: Alignment.center,
        width: 40.w,
        height: 40.h,
        child: icon,
        decoration:
            BoxDecoration(color: Colors.black38, shape: BoxShape.circle),
      ),
    );
  }
}

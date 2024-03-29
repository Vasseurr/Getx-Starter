import 'package:flutter/material.dart';
import 'package:getx_starter/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: MyColors.primaryColorList)),
      ),
      title: Text(
        "Get-X starter",
        style: GoogleFonts.lobster(
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 17.sp,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

import 'package:flutter/material.dart';

import '../../constants/path_constant.dart';
import '../../themes/custom_colors.dart';

PreferredSizeWidget customAppBarWidget(
    {VoidCallback? onTap, String? title, bool? isJobTab}) {
  return AppBar(
    backgroundColor: CustomColors.lightColor2,
    elevation: 0,
    leading: GestureDetector(
      onTap: onTap,
      child: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundImage: AssetImage(PathConstant.myProfilePic),
          )),
    ),
    title: Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        color: CustomColors.primaryColor2,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
            hintText: "$title",
            border: InputBorder.none,
            prefixIcon: const Icon(Icons.search)),
      ),
    ),
    actions: [
      isJobTab == false
          ? const Icon(
              Icons.message_outlined,
              size: 28,
              color: CustomColors.mainAuxiliaryColor,
            )
          : const Row(
              children: [
                Icon(Icons.more_vert,
                    size: 28, color: CustomColors.mainAuxiliaryColor),
                SizedBox(width: 10),
                Icon(Icons.message_outlined,
                    size: 28, color: CustomColors.mainAuxiliaryColor)
              ],
            ),
      const SizedBox(width: 10),
    ],
  );
}

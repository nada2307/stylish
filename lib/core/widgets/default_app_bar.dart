import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/asset_manager.dart';
import '../resources/color_manager.dart';
import '../resources/my_icons_icons.dart';

defaultAppBar() => AppBar(
      leadingWidth: 70,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15, top: 5),
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: ColorManager.white1,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              MyIcons.drawwer,
              color: ColorManager.grey5,
              size: 18,
            ),
          ),
        ),
      ),
      title: SvgPicture.asset(
        AssetManager.logo,
        height: 32,
        width: 112,
        fit: BoxFit.fill,
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 5.0, right: 15),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(AssetManager.profile),
          ),
        ),
      ],
    );

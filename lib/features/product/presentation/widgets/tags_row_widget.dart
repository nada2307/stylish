import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/core/resources/asset_manager.dart';

import '../../../../core/resources/color_manager.dart';
import 'tags_item_widget.dart';

class TagsRowWidget extends StatelessWidget {
  const TagsRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TagsItemWidget(
          widget: SvgPicture.asset(AssetManager.location),
          text: 'Nearest Store',
        ),
        SizedBox(
          width: 8,
        ),
        TagsItemWidget(
          widget: Icon(
            Icons.lock_outline_rounded,
            color: ColorManager.darkGrey,
            size: 18,
          ),
          text: 'Vip',
        ),
        const SizedBox(
          width: 8,
        ),
        TagsItemWidget(
          widget: SvgPicture.asset(AssetManager.return_policy),
          text: 'Return policy',
        ),
      ],
    );
  }
}

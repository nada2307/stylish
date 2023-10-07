import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'tags_item_widget.dart';

class TagsRowWidget extends StatelessWidget {
  const TagsRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TagsItemWidget(
          icon: Icons.location_on_outlined,
          text: 'Nearest Store',
        ),
        SizedBox(
          width: 8,
        ),
        TagsItemWidget(
          icon: Icons.lock_outline_rounded,
          text: 'Vip',
        ),
        const SizedBox(
          width: 8,
        ),
        TagsItemWidget(
          icon: CupertinoIcons.checkmark_alt_circle,
          text: 'Return policy',
        ),
      ],
    );
  }
}

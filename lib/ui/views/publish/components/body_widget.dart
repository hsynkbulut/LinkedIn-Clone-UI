import 'package:flutter/material.dart';

import '../../../../themes/custom_colors.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ne hakkında konuşmak istiyorsunuz?',
            style: TextStyle(
              color: CustomColors.mainAuxiliaryColor[600],
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

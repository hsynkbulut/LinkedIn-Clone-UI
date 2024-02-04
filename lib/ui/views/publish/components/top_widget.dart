import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/path_constant.dart';
import '../../../../themes/custom_colors.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.close),
        const SizedBox(width: 8),
        const CircleAvatar(
          backgroundImage: AssetImage(PathConstant.myProfilePic),
        ),
        const SizedBox(width: 8),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Herhan...',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 5),
            Icon(Icons.arrow_drop_down),
          ],
        ),
        const Spacer(),
        const Icon(CupertinoIcons.clock),
        const SizedBox(width: 10.0),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                CustomColors.primaryColor,
              ),
              foregroundColor: MaterialStateProperty.all(
                CustomColors.lightColor,
              ),
            ),
            onPressed: () {},
            child: const Text('Postala'),
          ),
        ),
      ],
    );
  }
}

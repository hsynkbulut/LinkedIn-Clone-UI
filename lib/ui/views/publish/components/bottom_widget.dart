import 'package:flutter/material.dart';

import '../../../../constants/path_constant.dart';
import '../../../../themes/custom_colors.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ImageWidget(
            imageUrl: PathConstant.galleryIcon,
            title: 'Medya',
          ),
          ImageWidget(
            imageUrl: PathConstant.templateIcon,
            title: 'Şablon',
          ),
          IconWidget(
            icon: Icons.more_horiz,
            title: 'Daha fazla',
          ),
        ],
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: CustomColors.mainAuxiliaryColor[200],
            borderRadius: BorderRadius.circular(28),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Icon(
              icon, //Icons.more_horiz,
              size: 28,
              color: CustomColors.secondaryColor,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "Daha fazla",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: CustomColors.secondaryColor,
          ),
        ),
      ],
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.imageUrl, required this.title});
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: CustomColors.mainAuxiliaryColor[200],
            borderRadius: BorderRadius.circular(28),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Image.asset(
              imageUrl,
              color: CustomColors.secondaryColor,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: CustomColors.secondaryColor,
          ),
        ),
      ],
    );
  }
}

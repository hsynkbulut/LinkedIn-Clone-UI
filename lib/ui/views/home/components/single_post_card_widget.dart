// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../constants/path_constant.dart';
import '../../../../repository/user_post_data.dart';
import '../../../../themes/custom_colors.dart';
import 'stacked_widgets.dart';

class SinglePostCardWidget extends StatelessWidget {
  final UserPostData userPostData;
  const SinglePostCardWidget({Key? key, required this.userPostData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: CustomColors.lightColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(userPostData.profileUrl!),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userPostData.name!,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          userPostData.jobTitle!,
                          style: const TextStyle(
                            fontSize: 12,
                            color: CustomColors.textColor2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(CupertinoIcons.ellipsis_vertical),
                  ],
                ),
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userPostData.description!,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      userPostData.tags!,
                      style: const TextStyle(
                        color: CustomColors.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(userPostData.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(children: [
              buildStackedImages(),
              const SizedBox(width: 6),
              Text(
                userPostData.likes!,
                style: likesIconsStyle(),
              ),
              const Spacer(),
              Text(
                userPostData.comments!,
                style: likesIconsStyle(),
              ),
              const SizedBox(width: 4),
              Text(
                "yorum",
                style: likesIconsStyle(),
              ),
              const SizedBox(width: 4),
              Text(
                "•",
                style: likesIconsStyle(),
              ),
              const SizedBox(width: 4),
              Text(
                userPostData.repost!,
                style: likesIconsStyle(),
              )
            ]),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(
              color: CustomColors.dividerColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    SizedBox(
                      width: 31,
                      height: 31,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(PathConstant.myProfilePic),
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 31,
                    ),
                  ],
                ),
                _rowButtons(icon: FontAwesomeIcons.thumbsUp, name: "Beğendim"),
                _rowButtons(
                    icon: CupertinoIcons.chat_bubble_text, name: "Yorum Yap"),
                _rowButtons(icon: Icons.repeat, name: "Yeniden yayınla"),
                _rowButtons(icon: Icons.send_rounded, name: "Gönder"),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Divider(
            thickness: 8,
            color: CustomColors.mainAuxiliaryColor[200],
          )
        ],
      ),
    );
  }

  TextStyle likesIconsStyle() {
    return const TextStyle(fontSize: 12, color: CustomColors.textColor);
  }

  _rowButtons({String? name, IconData? icon}) {
    return Column(
      children: [
        Icon(icon, size: 24, color: CustomColors.textColor),
        /*
        const SizedBox(height: 5),
        Text(
          "$name",
          style: const TextStyle(fontSize: 10, color: CustomColors.textColor),
        )
        */
      ],
    );
  }

  Widget buildStackedImages() {
    double size = 20;
    final urlImages = [
      PathConstant.likeIcon,
      PathConstant.celebrateIcon,
      PathConstant.heartIcon,
    ];

    //final items = urlImages.map((urlImage) => buildImage(urlImage)).toList();
    final items = urlImages
        .asMap()
        .map((index, urlImage) => MapEntry(
            index,
            buildImage(urlImage,
                index))) // buildImage işlevini çağırırken indeksi iletecektir
        .values
        .toList();

    return StackedWidgets(
      items: items,
      size: size,
      xShift: 6,
    );
  }

  Widget buildImage(String urlImage, int index) {
    double borderSize = 1;

    List<Color> backgroundColors = [
      CustomColors.likeColor,
      CustomColors.celebrateColor,
      CustomColors.heartColor
    ];

    // İndex, arka plan rengi için kullanılacak indeksi sınırla
    index = index % backgroundColors.length;

    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(borderSize),
        color: Colors.white,
        child: ClipOval(
          child: Container(
            padding: EdgeInsets.all(borderSize),
            color:
                backgroundColors[index], // İndexe göre arka plan rengini ayarla
            child: ClipOval(
              child: Image.asset(
                urlImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

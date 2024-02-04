import 'package:flutter/material.dart';
import '../../../../repository/network_data.dart';
import '../../../../themes/custom_colors.dart';

class SingleNetworkCardWidget extends StatelessWidget {
  final NetworkData network;
  const SingleNetworkCardWidget({Key? key, required this.network})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Positioned(
              child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: CustomColors.mainAuxiliaryColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
            child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(
                  network.bgImage!,
                  fit: BoxFit.fill,
                )),
          )),
          Positioned(
              top: 18, //ESKİ 20
              right: 10,
              left: 10,
              child: CircleAvatar(
                backgroundImage: AssetImage(network.profileUrl!),
                radius: 45,
              )),
          Positioned(
              right: 3,
              top: 3,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: CustomColors.textColor2,
                    borderRadius: BorderRadius.circular(30)),
                child: const Icon(
                  Icons.close,
                  color: CustomColors.lightColor,
                  size: 20,
                ),
              )),
          Positioned(
            bottom: 17, //ESKİ 28
            left: 10,
            right: 10,
            child: Column(
              children: [
                Text(
                  network.username!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 3), //ESKİ 5
                Text(
                  network.description!,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 14, color: CustomColors.textColor),
                ),
                const SizedBox(height: 5),
                Text(
                  "${network.connections!} ortak bağlantı",
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13,
                    color: CustomColors.textColor,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: CustomColors.primaryColor)),
                  child: const Center(
                      child: Text(
                    "Bağlantı kur",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.primaryColor),
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

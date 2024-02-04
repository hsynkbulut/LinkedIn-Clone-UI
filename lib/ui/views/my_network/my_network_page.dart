import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:linkedin_mobile_app_ui/ui/widgets/custom_app_bar.dart';
import 'package:linkedin_mobile_app_ui/themes/custom_colors.dart';
import '../../../repository/network_data.dart';
import 'components/single_network_card_widget.dart';

class MyNetworkPage extends StatefulWidget {
  const MyNetworkPage({Key? key}) : super(key: key);

  @override
  State<MyNetworkPage> createState() => _MyNetworkPageState();
}

class _MyNetworkPageState extends State<MyNetworkPage> {
  final networkData = NetworkDataClass.networkData;
  bool isFabVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBarWidget(title: 'Arama Yap'),
        floatingActionButton: Visibility(
          visible: isFabVisible,
          child: FloatingActionButton(
            backgroundColor: CustomColors.primaryColor,
            onPressed: () {},
            child: const Icon(
              Icons.person_add_alt_1_rounded,
              color: CustomColors.lightColor,
            ),
          ),
        ),
        body: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            if (notification.direction == ScrollDirection.forward) {
              if (!isFabVisible) setState(() => isFabVisible = true);
            } else if (notification.direction == ScrollDirection.reverse) {
              if (isFabVisible) setState(() => isFabVisible = false);
            }
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 15),
                _rowWidget(
                    text: "Ağımı yönet", icon: Icons.arrow_forward_rounded),
                const SizedBox(height: 5),
                _customDivider(),
                _rowWidget(
                    text: "Davetiyeler", icon: Icons.arrow_forward_rounded),
                _customDivider(),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.only(left: 18),
                  child: const Text(
                    "Türkiye konumunda tanıyor olabileceğiniz kişiler",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      GridView.builder(
                        itemCount: networkData.length,
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.7,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          final network = networkData[index];
                          return SingleNetworkCardWidget(network: network);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Divider _customDivider() {
    return Divider(
      thickness: 7,
      color: CustomColors.mainAuxiliaryColor[200],
    );
  }

  _rowWidget({String? text, IconData? icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$text",
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: CustomColors.primaryColor),
          ),
          Icon(icon),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:linkedin_mobile_app_ui/repository/notification_data.dart';
import '../../../themes/custom_colors.dart';
import '../../widgets/custom_app_bar.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int selectedIndex = 0;

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final notificationData = NotificationDataClass.notificationData;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBarWidget(title: 'Arama Yap'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _rowButtons(),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              customDivider(),
              ListView.builder(
                shrinkWrap: true,
                itemCount: notificationData.length,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 25),
                              width: 45,
                              height: 45,
                              child: Image.asset(
                                "${notificationData[index].img}",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            "${notificationData[index].name!}",
                                        style: const TextStyle(
                                          color: CustomColors.textColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight
                                              .bold, // Kalın yazı fontu
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            " ${notificationData[index].info!}",
                                        style: const TextStyle(
                                          color: CustomColors.textColor,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.start,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(notificationData[index].time!,
                                    style: const TextStyle(
                                        color: CustomColors.textColor,
                                        fontSize: 12)),
                                const Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Icon(Icons.more_vert),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Divider customDivider() {
    return Divider(
      thickness: 8,
      color: CustomColors.mainAuxiliaryColor[200],
    );
  }

  _rowButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            updateIndex(0);
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: selectedIndex == 0
                    ? CustomColors.accentColor
                    : CustomColors.transparentColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: selectedIndex == 0
                        ? CustomColors.transparentColor
                        : CustomColors.secondaryColor)),
            child: Text(
              "Tümü",
              style: TextStyle(
                  color: selectedIndex == 0
                      ? CustomColors.lightColor
                      : CustomColors.secondaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            updateIndex(1);
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: selectedIndex == 1
                    ? CustomColors.accentColor
                    : CustomColors.transparentColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: selectedIndex == 1
                        ? CustomColors.transparentColor
                        : CustomColors.secondaryColor)),
            child: Text(
              "Gönderilerim",
              style: TextStyle(
                  color: selectedIndex == 1
                      ? CustomColors.lightColor
                      : CustomColors.secondaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            updateIndex(2);
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: selectedIndex == 2
                    ? CustomColors.accentColor
                    : CustomColors.transparentColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: selectedIndex == 2
                        ? CustomColors.transparentColor
                        : CustomColors.secondaryColor)),
            child: Text(
              "Değinmeler",
              style: TextStyle(
                  color: selectedIndex == 2
                      ? CustomColors.lightColor
                      : CustomColors.secondaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

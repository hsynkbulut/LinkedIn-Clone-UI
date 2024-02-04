import 'package:flutter/material.dart';
import '../../../repository/recommendation_data.dart';
import '../../../themes/custom_colors.dart';
import '../../widgets/custom_app_bar.dart';

class JobsPage extends StatefulWidget {
  const JobsPage({Key? key}) : super(key: key);

  @override
  State<JobsPage> createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  final recommendationData = RecommendedDataClass.recommendationData;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBarWidget(title: 'İş ilanı arayın'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _rowButtons(
                        icon: Icons.bookmark_border_rounded,
                        text: "İş ilanlarım"),
                    _rowButtons(icon: Icons.post_add, text: "İş ilanı yayınla"),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Divider(
                thickness: 12,
                color: CustomColors.mainAuxiliaryColor[200],
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "En son yapılan aramalar",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Temizle",
                      style: TextStyle(
                          color: CustomColors.textColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              _recentSearches(
                text: "Junior Software Developer",
                text2: "7 yeni",
                country: "Türkiye",
              ),
              _recentSearches(
                text: "UI/UX Designing",
                text2: "1 yeni",
                country: "Almanya",
              ),
              _recentSearches(
                text: "Flutter Developer",
                text2: "2 yeni",
                country: "Amerika",
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {},
                child: const Text(
                  "Daha fazla göster",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.primaryColor,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Divider(
                thickness: 8,
                color: CustomColors.mainAuxiliaryColor[200],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Sizin için önerilen',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 8),
              ListView.builder(
                shrinkWrap: true,
                itemCount: recommendationData.length,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 40),
                              width: 45,
                              height: 45,
                              color: CustomColors.mainAuxiliaryColor,
                              child: Image.asset(
                                "${recommendationData[index].img}",
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  recommendationData[index].jobTitle!,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      recommendationData[index].companyName!,
                                    ),
                                    const SizedBox(height: 3),
                                    Text(recommendationData[index].location!,
                                        style: const TextStyle(
                                            color: CustomColors.textColor)),
                                    const SizedBox(height: 3),
                                    Text(recommendationData[index].time!,
                                        style: const TextStyle(
                                            color: CustomColors.accentColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            const SizedBox(width: 10),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 45),
                              child: Icon(Icons.bookmark_border_rounded),
                            ),
                          ],
                        ),
                        const Divider()
                      ],
                    ),
                  );
                },
              ),
              InkWell(
                onTap: () {},
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Tümünü gör",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.primaryColor,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward_outlined,
                        color: CustomColors.primaryColor,
                      )
                    ]),
              ),
              const Divider()
            ],
          ),
        ),
      ),
    );
  }

  _rowButtons({
    IconData? icon,
    String? text,
  }) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 5),
        Text(
          "$text",
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        )
      ],
    );
  }

  _recentSearches({String? text, text2, country}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "$text",
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(width: 10),
              Text(
                "$text2",
                style: const TextStyle(
                    color: CustomColors.accentColor,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          Text("$country"),
          const Divider()
        ],
      ),
    );
  }
}

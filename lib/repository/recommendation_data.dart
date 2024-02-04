import '../constants/path_constant.dart';

class RecommendationData {
  final String? jobTitle;
  final String? companyName;
  final String? location;
  final String? time;
  final String? img;

  RecommendationData({
    this.jobTitle,
    this.img,
    this.companyName,
    this.location,
    this.time,
  });
}

class RecommendedDataClass {
  static List<RecommendationData> recommendationData = [
    RecommendationData(
        jobTitle: "Statistical Data Scientist",
        companyName: "Company A",
        location: "Tamul Nadu, Hindistan (İş yerinde)",
        time: "1 gün önce",
        img: PathConstant.company1),
    RecommendationData(
        jobTitle: "Dijital Pazarlama Uzmanı ",
        companyName: "Company G",
        location: "İstanbul, Türkiye (Hybrid)",
        time: "3 gün önce",
        img: PathConstant.company2),
    RecommendationData(
        jobTitle: "Software Engineer ",
        companyName: "Company G",
        location: "İstanbul, Türkiye (Uzaktan)",
        time: "5 gün önce",
        img: PathConstant.company2),
    RecommendationData(
        jobTitle: "Junior Flutter Developer",
        companyName: "Company A",
        location: "Dalian, Liaoning, Çin (İş yerinde)",
        time: "2 saat önce",
        img: PathConstant.company1),
  ];
}

import 'package:linkedin_mobile_app_ui/constants/path_constant.dart';

class NetworkData {
  final String? bgImage;
  final String? profileUrl;
  final String? username;
  final String? description;
  final num? connections;

  NetworkData({
    this.bgImage,
    this.profileUrl,
    this.username,
    this.description,
    this.connections,
  });
}

class NetworkDataClass {
  static final List<NetworkData> networkData = [
    NetworkData(
      username: "Nermin Uslu",
      description: "Ulusal Banka Müdürü",
      connections: 5,
      profileUrl: PathConstant.user1,
      bgImage: PathConstant.banner8,
    ),
    NetworkData(
      username: "Cemil Tüfekçi",
      description: "Dijital Pazarlama Uzmanı",
      connections: 7,
      profileUrl: PathConstant.user2,
      bgImage: PathConstant.banner1,
    ),
    NetworkData(
      username: "Filiz Demir",
      description: "İnsan Kaynakları Uzmanı",
      connections: 24,
      profileUrl: PathConstant.user3,
      bgImage: PathConstant.banner2,
    ),
    NetworkData(
      username: "Nazlı Engin",
      description: "Flutter Developer",
      connections: 53,
      profileUrl: PathConstant.user5,
      bgImage: PathConstant.banner6,
    ),
    NetworkData(
      username: "Ufuk Taşçı",
      description: "Alem Yapı Co-Founder",
      connections: 68,
      profileUrl: PathConstant.user4,
      bgImage: PathConstant.banner7,
    ),
    NetworkData(
      username: "Cemal Ashar",
      description: "Sosyal Medya Direktörü",
      connections: 27,
      profileUrl: PathConstant.user6,
      bgImage: PathConstant.banner4,
    ),
    NetworkData(
      username: "Müge Cansoy",
      description: "Psikiyatrist",
      connections: 86,
      profileUrl: PathConstant.user8,
      bgImage: PathConstant.banner5,
    ),
    NetworkData(
      username: "Faruk Salkan",
      description: "Banka Müdür Yardımcısı",
      connections: 8,
      profileUrl: PathConstant.user7,
      bgImage: PathConstant.banner3,
    ),
  ];
}

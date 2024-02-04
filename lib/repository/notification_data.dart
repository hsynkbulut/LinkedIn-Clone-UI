import '../constants/path_constant.dart';

class NotificationData {
  final String? name;
  final String? time;
  final String? info;
  final String? img;

  NotificationData({
    this.name,
    this.img,
    this.time,
    this.info,
  });
}

class NotificationDataClass {
  static List<NotificationData> notificationData = [
    NotificationData(
        name: "Company G",
        info:
            "tarafından Company G Kariyer Bülteni serisinde yayınlanan yeni yazı: Kariyer Bülteni #57",
        time: "30 dk",
        img: PathConstant.company2),
    NotificationData(
        name: "Company A",
        info:
            "ve takip ettiğiniz diğer kişiler bu hafta 2 etkinlik oluşturdu. Tüm etkinlikleri görüntüleyin.",
        time: "20 dk",
        img: PathConstant.company1),
    NotificationData(
        name: "İnsanlar",
        info:
            "George Rihtar adlı kullanıcının gönderisine reaksiyon veriyor: Can you do it?",
        time: "2s",
        img: PathConstant.notificationUser),
  ];
}

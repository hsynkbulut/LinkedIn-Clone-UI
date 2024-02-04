import '../constants/path_constant.dart';

class UserPostData {
  final String? profileUrl;
  final String? name;
  final String? jobTitle;
  final String? description;
  final String? image;
  final String? comments;
  final String? likes;
  final String? tags;
  final String? repost;

  UserPostData({
    this.repost,
    this.profileUrl,
    this.name,
    this.jobTitle,
    this.description,
    this.image,
    this.comments,
    this.likes,
    this.tags,
  });
}

class UserPostClass {
  static final List<UserPostData> userPostList = [
    UserPostData(
        name: "LinkedIn",
        profileUrl: PathConstant.company3,
        jobTitle: "Öne çıkarılan içerik ",
        tags: "https://lnkd.in/egaBxdt",
        description:
            "You have recently saved jobs. Don't miss your chance to apply.",
        comments: "1.747",
        image: PathConstant.linkedinPostImg,
        likes: "67.053",
        repost: "707 yeniden yayınlama"),
    UserPostData(
        name: "Nazlı Engin",
        profileUrl: PathConstant.user5,
        jobTitle: "Flutter Developer",
        tags: "#flutter #dart #mobiluygulama #development #ui",
        description:
            "Flutter, Google tarafından oluşturulan açık kaynaklı bir mobil uygulama geliştirme kitidir. Android ve iOS için uygulamalar geliştirmek için kullanılır.",
        comments: "64",
        image: PathConstant.flutterPostImg,
        likes: "252",
        repost: "7 yeniden yayınlama"),
    UserPostData(
        name: "Filiz Demir",
        profileUrl: PathConstant.user3,
        jobTitle: "İnsan Kaynakları Uzmanı",
        tags: "#ik #hr #insankaynakları #işilanı #işbaşvurusu #kurumsalçalışma",
        description: "Jimensas'ta HR Specialist olarak çalışmak ister misin?",
        comments: "38",
        image: PathConstant.itRecruitmentPostImg,
        likes: "156",
        repost: "3 yeniden yayınlama"),
    UserPostData(
        name: "Cemil Tüfekçi",
        profileUrl: PathConstant.user2,
        jobTitle: "Dijital Pazarlama Uzmanı",
        tags: "https://lnkd.in/mcaBdfr",
        description:
            "Merhaba değerli bağlantılarım,\n\nDijital pazarlamanın inceliklerini öğrenmek, hizmet sektöründe aranan olmak isteyenler için özel olarak hazırlamış olduğum eğitim setine aşağıdaki linkten ulaşabilirsiniz.",
        comments: "22",
        image: PathConstant.digitalMarketingPostImg,
        likes: "98",
        repost: "1 yeniden yayınlama"),
  ];
}

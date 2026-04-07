//Model Class of User
class User {
  final String userName;
  final String userProffession;
  final String userProfileImage;
  final String userContact;
  final String professionDescription;

  User(
      {required this.userName,
        required this.userProffession,
        required this.userProfileImage,
        required this.userContact,
        required this.professionDescription,
      });

  //Json File ke User object e convert;
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        userName: json["userName"],
        userProffession: json["userProffession"],
        userProfileImage: json["userProfileImage"],
        userContact: json["userContact"],
        professionDescription: json["professionDescription"]
    );
  }
}
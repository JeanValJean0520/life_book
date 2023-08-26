Future<ProfileModel> getUserProfileInfo() async {
  try {
    Response response = await dio.get("$baseUrl/profile/");

    ProfileModel getData = ProfileModel.fromJson(response.data);

    return getData;
  } catch (e) {
    return Future.error(e);
  }
}

Future<bool> postUserProfile(
    {required String userName,
    String? bestTravel,
    String? introduce,
    String? image,
    required String fcmToken}) async {
  Map requestBody = {
    "userProfile": image,
    "userName": userName,
    "introduce": introduce,
    "bestTravel": bestTravel,
    "fcmToken": fcmToken
  };

  try {
    Response response = await dio.post(
      "$baseUrl/profile/",
      data: requestBody,
    );

    if (response.data["statusCode"] == 201) {
      return true;
    } else
      return false;
  } catch (e) {
    return false;
  }
}

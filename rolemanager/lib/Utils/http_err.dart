class HttpError {
  static String responseVerify(int statusCode) {
    switch (statusCode) {
      case 200:
        return "Sucess request!";
      case 201:
        return "Post created with sucess!";
      case 401:
        return "You dont have authorization!";
      case 404:
        return "Internet fail!";
      case 500:
        return "date request fail!";
      default:
        return "Unknown error!";
    }
  }
}

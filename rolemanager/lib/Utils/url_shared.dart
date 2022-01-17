import 'package:flutter/foundation.dart';

enum TypeDomains { amazon, localHost, domain }

class UrlShared {
  String baseUrl(TypeDomains typeDomains) {
    switch (typeDomains) {
      case TypeDomains.amazon:
        return "http://3.13.112.254:3000";
      case TypeDomains.localHost:
        return "localhost:3000";
      case TypeDomains.domain:
        return "https://api.drinkgame.shrimpdev.com/";
      default:
        {
          print("Dont exist this route.");
        }
    }
  }
}

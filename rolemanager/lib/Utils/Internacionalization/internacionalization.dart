enum LN10 { ptbr, eng }

enum ENUM_INTER { lbapresentationLogin, lbinvitationLogin, buttonLogin }

class Ln10 {
  //I put smart function name because the confort, but this is temporary internacionalization...
  String trans(LN10 ln10, ENUM_INTER ptinter) {
    switch (ln10) {
      case LN10.ptbr:
        return portuguesTranslate(ptinter);
      case LN10.eng:
        return englishTranslate(ptinter);
    }
  }

  //Porguese
  String portuguesTranslate(ENUM_INTER ptTras) {
    switch (ptTras) {
      case ENUM_INTER.lbapresentationLogin:
        return "Entre com a sua conta";
      case ENUM_INTER.lbinvitationLogin:
        return "Recebeu um convite e ainda não se cadastrou?";
      case ENUM_INTER.buttonLogin:
        return "Clique aqui!";
    }
  }

  //english
  String englishTranslate(ENUM_INTER ingTras) {
    switch (ingTras) {
      case ENUM_INTER.lbapresentationLogin:
        return "Login with your account";
      case ENUM_INTER.lbinvitationLogin:
        return "Received an invitation and still not registered?";
      case ENUM_INTER.buttonLogin:
        return "Click Here!";
    }
  }
}

enum LN10 { ptbr, eng }

enum ENUM_INTER {
  lbapresentationlogin,
  lbinvitationlogin,
  buttonloginInvitation,
  lbbuttonlogin,
  lbmailinpult,
  lbpassinput,
  lbmodalivite,
  lbtextmodalinvite,
  buttoninvitecancel,
  buttoninvitesucess,
  txterroinviteinput,
  txtwrongemailpass
}

class Ln10 {
  //I put smart function name because the confort, but this is temporary internacionalization...
  static String trans(LN10 ln10, ENUM_INTER ptinter) {
    switch (ln10) {
      case LN10.ptbr:
        return portugueseTranslate(ptinter);
      case LN10.eng:
        return englishTranslate(ptinter);
    }
  }

  //Porguese
  static String portugueseTranslate(ENUM_INTER ptTrans) {
    switch (ptTrans) {
      case ENUM_INTER.lbapresentationlogin:
        return "Entre com a sua conta";
      case ENUM_INTER.lbinvitationlogin:
        return "Recebeu um convite e ainda não se cadastrou?";
      case ENUM_INTER.buttonloginInvitation:
        return "Clique aqui!";
      case ENUM_INTER.lbbuttonlogin:
        return "Logar com sua conta!";
      case ENUM_INTER.lbmailinpult:
        return "Email";
      case ENUM_INTER.lbpassinput:
        return "Senha";
      case ENUM_INTER.lbmodalivite:
        return "Entrar com um convite";
      case ENUM_INTER.lbtextmodalinvite:
        return "Insira o código do seu convite";
      case ENUM_INTER.buttoninvitecancel:
        return "Cancelar";
      case ENUM_INTER.buttoninvitesucess:
        return "Concluir";
      case ENUM_INTER.txterroinviteinput:
        return "Você não inseriu nenhum código";
      case ENUM_INTER.txtwrongemailpass:
        return "Email ou senha incorreto";
    }
  }

  //english
  static String englishTranslate(ENUM_INTER engTrans) {
    switch (engTrans) {
      case ENUM_INTER.lbapresentationlogin:
        return "Login with your account";
      case ENUM_INTER.lbinvitationlogin:
        return "Received an invitation and still not registered?";
      case ENUM_INTER.buttonloginInvitation:
        return "Click Here!";
      case ENUM_INTER.lbbuttonlogin:
        return "Log in with your account!";
      case ENUM_INTER.lbmailinpult:
        return "Email";
      case ENUM_INTER.lbpassinput:
        return "Password";
      case ENUM_INTER.lbmodalivite:
        return "Sign in with an invite";
      case ENUM_INTER.lbtextmodalinvite:
        return "Enter your invitation code";
      case ENUM_INTER.buttoninvitecancel:
        return "Cancel";
      case ENUM_INTER.buttoninvitesucess:
        return "Conclude";
      case ENUM_INTER.txterroinviteinput:
        return "You have not entered any code";
      case ENUM_INTER.txtwrongemailpass:
        return "Incorrect email or password";
    }
  }
}

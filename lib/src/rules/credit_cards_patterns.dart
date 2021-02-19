class CreditCardPatterns {
  static final patterns = _buildCardPatterns();

  static List<String> _buildCardPatterns() {
    final List<String> listOfPattern = [];
    listOfPattern.add(amex);
    listOfPattern.add(bcGlobal);
    listOfPattern.add(carteBlanche);
    listOfPattern.add(dinersClub);
    listOfPattern.add(discover);
    listOfPattern.add(instaPayment);
    listOfPattern.add(jcb);
    listOfPattern.add(koreanLocalCard);

    listOfPattern.add(laser);
    listOfPattern.add(maestro);
    listOfPattern.add(mastercard);
    listOfPattern.add(solo);
    listOfPattern.add(switchCard);
    listOfPattern.add(unionPay);
    listOfPattern.add(visa);
    listOfPattern.add(visaMaster);
    return listOfPattern;
  }

  static final amex = '^3[47][0-9]{13}\$';
  static final bcGlobal = "^(6541|6556)[0-9]{12}\$";
  static final carteBlanche = "^389[0-9]{11}\$";
  static final dinersClub = "^3(?:0[0-5]|[68][0-9])[0-9]{11}\$";
  static final discover =
      "^65[4-9][0-9]{13}|64[4-9][0-9]{13}|6011[0-9]{12}|(622(?:12[6-9]|1[3-9][0-9]|[2-8][0-9][0-9]|9[01][0-9]|92[0-5])[0-9]{10})\$";
  static final instaPayment = "^63[7-9][0-9]{13}\$";
  static final jcb = "^(?:2131|1800|35\d{3})\d{11}\$";
  static final koreanLocalCard = "^9[0-9]{15}\$";
  static final laser = "^(6304|6706|6709|6771)[0-9]{12,15}\$";
  static final maestro = "^(5018|5020|5038|6304|6759|6761|6763)[0-9]{8,15}\$";
  static final mastercard = "^5[1-5][0-9]{14}\$";
  static final solo =
      "^(6334|6767)[0-9]{12}|(6334|6767)[0-9]{14}|(6334|6767)[0-9]{15}\$";
  static final switchCard =
      "^(4903|4905|4911|4936|6333|6759)[0-9]{12}|(4903|4905|4911|4936|6333|6759)[0-9]{14}|(4903|4905|4911|4936|6333|6759)[0-9]{15}|564182[0-9]{10}|564182[0-9]{12}|564182[0-9]{13}|633110[0-9]{10}|633110[0-9]{12}|633110[0-9]{13}\$";
  static final unionPay = "^(62[0-9]{14,17})\$";
  static final visa = "^4[0-9]{12}(?:[0-9]{3})?\$";
  static final visaMaster = "^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14})\$";
  static final ptVisa = "^4[0-9]{6,}\$";
  static final ptMasterCard = "^5[1-5][0-9]{5,}\$";
}

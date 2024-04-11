class PriceFormat {
  static String formatPrice(int price) {
    String priceAsString = price.toString();
    if (priceAsString.length > 2) {
      String result = "";
      for (int i = 0; i < priceAsString.length; i++) {
        if (priceAsString.length - 1 == i) {
          result += priceAsString[i];
        } else if (i % 3 == 0) {
          result += "${priceAsString[i]}.";
        } else {
          result += priceAsString[i];
        }
      }
      return result;
    }
    return priceAsString;
  }
}

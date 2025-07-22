class FirestorePath {
  static String planets() => "planets/";
  static String products() => "products/";
  static String categories() => "categories/";
  static String user(String uid) => "users/$uid";

  static String carts(String uid, String cartId) => "users/$uid/cards/$cartId";
  static String myProductsCart(String uid) => "users/$uid/cards/";

  static String favoriteProduct(String uid, String productId) =>
      "users/$uid/favorite/$uid/products/$productId";
  static String myFavoriteProduct(String uid) =>
      "users/$uid/favorite/$uid/products/";

  static String favoritePlanet(String uid, String planetId) =>
      "users/$uid/favorite/$uid/planets/$planetId";
  static String myFavoritePlanet(String uid) =>
      "users/$uid/favorite/$uid/planets/";

  static String garden(String uid, String garden) =>
      "users/$uid/garden/$garden";
  static String myGarden(String uid) => "users/$uid/garden/";

  static String addresses(String uid, String addressId) =>
      "users/$uid/addresses/$addressId";
  static String myAddresses(String uid) => "users/$uid/addresses/";
}

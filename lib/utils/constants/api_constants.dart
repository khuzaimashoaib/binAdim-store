class BAApiConstants {
  // Base URL
  static const String _baseUrl = "https://binadim.com/wp-json/wc/v3";

  // Keys
  static const String _consumerKey =
      "ck_26a0207b492cbd33ced8ce2fe9e6859dab49075e";
  static const String _consumerSecret =
      "cs_291185e28704ee3ab43afe90b5f9deed2cc9ad76";

  // Get All Products
  static String getProducts(int page, int perPage) =>
      "$_baseUrl/products?consumer_key=$_consumerKey&consumer_secret=$_consumerSecret&page=$page&per_page=$perPage";

  // Single Product API
  static String singleProduct(int id) =>
      "$_baseUrl/products?$id=$_consumerKey&consumer_secret=$_consumerSecret";
}

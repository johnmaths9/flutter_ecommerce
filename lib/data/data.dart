// list of categories
import '../models/category_model.dart';
import '../models/product_model.dart';

final categories = [
  const Category(
    categoryName: "T-SHIRT",
    productCount: "240",
    imageUrl:
        "https://images.unsplash.com/photo-1576871337622-98d48d1cf531?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
  ),
  const Category(
    categoryName: "SHOES",
    productCount: "120",
    imageUrl:
        "https://images.unsplash.com/photo-1595341888016-a392ef81b7de?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1179&q=80",
  ),
  const Category(
    categoryName: "HODDIE",
    productCount: "200",
    imageUrl:
        "https://images.unsplash.com/photo-1647771746277-eac927afab2c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
  ),
  const Category(
    categoryName: "JEANS",
    productCount: "240",
    imageUrl:
        "https://images.unsplash.com/photo-1576995853123-5a10305d93c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  ),
];

// list of products
final products = [
  Product(
      productName: "MNML - Oversized Tshirt",
      productImageUrl:
          "https://i.etsystatic.com/30156848/r/il/11924d/3217906081/il_794xN.3217906081_dh4g.jpg",
      currentPrice: "500",
      productSize: "XL",
      categoryName: "HODDIE"),
  Product(
      productName: "Crop Top Hoddie",
      productImageUrl:
          "https://i.etsystatic.com/30156848/r/il/20105e/3141017602/il_1140xN.3141017602_6x3c.jpg",
      currentPrice: "392",
      productSize: "XL",
      categoryName: "HODDIE"),
  Product(
      productName: "MNML - Jeans",
      productImageUrl:
          "https://m.media-amazon.com/images/I/81+0OGmwh1L._AC_UX522_.jpg",
      currentPrice: "240",
      productSize: "XL",
      categoryName: "HODDIE"),
  Product(
      productName: "Half Tshirt",
      productImageUrl:
          "https://i.etsystatic.com/30156848/r/il/95ac21/4341041082/il_794xN.4341041082_b25b.jpg",
      currentPrice: "204",
      productSize: "XL",
      categoryName: "HODDIE"),
  Product(
      productName: "MNML - Jeans",
      productImageUrl:
          "https://i.etsystatic.com/20405111/r/il/9f2a07/4494827583/il_794xN.4494827583_4sfe.jpg",
      currentPrice: "240",
      productSize: "XL",
      categoryName: "HODDIE"),
  Product(
      productName: "Best Fit Women Outfit",
      productImageUrl:
          "https://i.etsystatic.com/36747879/r/il/701cdc/4946380159/il_794xN.4946380159_1jgg.jpg",
      currentPrice: "540",
      productSize: "XL",
      categoryName: "HODDIE"),
  Product(
      productName: "Strip Tourser",
      productImageUrl:
          "https://i.etsystatic.com/31640112/r/il/cea8df/4955258959/il_794xN.4955258959_167f.jpg",
      currentPrice: "230",
      productSize: "XL",
      categoryName: "HODDIE"),
  Product(
      productName: "Half Tshirt",
      productImageUrl:
          "https://i.etsystatic.com/20405111/r/il/a3ba15/3868404558/il_794xN.3868404558_kkh9.jpg",
      currentPrice: "204",
      productSize: "XL",
      categoryName: "HODDIE"),
];

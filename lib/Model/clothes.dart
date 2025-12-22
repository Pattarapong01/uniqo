import 'package:uniqo/Model/ืitems.dart';

class Clothes {
  String imageLabel;
  String imageUrl;
  String imageDetail;
  String priceDetail;
  List<Items> items = [];

  Clothes(
    this.imageUrl,
    this.imageLabel,
    this.imageDetail,
    this.priceDetail,
    this.items,
  );

  static List<Clothes> samples = [
    Clothes(
      'asset/images/uniqlo-kaws-warhol-coach-jacket-black-474138-1.jpg',
      'Uniqlo Clothes',
      'Uniqlo KAWS + Warhol Coach Jacket Black-474138-1.',
      'Price from 500 Bath',
      [Items(price: 500, unit: 'Bath')],
    ),
  ];
}

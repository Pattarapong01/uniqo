class Clothes {
  String imageLabel;
  String imageUrl;
  String imageDetail;
  Clothes(this.imageUrl,this.imageLabel,this.imageDetail);

static List<Clothes> samples = 
  [
    Clothes('assets/images/juice.webp', 'Sweet Thai basil smash cocktail', 'A refreshing cocktail made with Thai basil, lime juice, and a hint of sweetness.'), 
  ];
}
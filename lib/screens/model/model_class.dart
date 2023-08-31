class Brand {
  String? logo;
  String? name;

  Brand({required this.name, required this.logo});
}

List<Brand> brand = [
  Brand(name: 'nike', logo: 'https://pngimg.com/uploads/nike/nike_PNG5.png'),
  Brand(
      name: 'puma',
      logo: 'https://www.freepnglogos.com/uploads/puma-logo-png-1.png'),
  Brand(
      name: 'Under Armor',
      logo:
          'https://download.logo.wine/logo/Under_Armour/Under_Armour-Logo.wine.png'),
  Brand(
      name: 'Adidas',
      logo: 'https://www.freepnglogos.com/uploads/adidas-logo-png-hd-17.png'),
  Brand(
      name: 'converse',
      logo:
          'https://download.logo.wine/logo/Converse_(shoe_company)/Converse_(shoe_company)-Logo.wine.png'),
];

class BestSeller {
  final String image;
  final String brandName;
  final String description;
  final String bestSeller;
  final String bestChoice;
  final double price;
  final Map<String, Map<String, double>>
      size; // { "US": {"size": value}, "UK": {"size": value}, "EU": {"size": value"} }
  final List<String> gallery;

  BestSeller({
    required this.image,
    required this.brandName,
    required this.description,
    required this.bestSeller,
    required this.bestChoice,
    required this.price,
    required this.size,
    required this.gallery,
  });
  Map<String, double> getSize(String variant) {
    return size[variant] ?? {}; // Return an empty map if variant not found
  }
}

List<BestSeller> myShoe = [
  BestSeller(
    image: 'https://www.pngmart.com/files/21/Air-Jordan-PNG-Picture.png',
    brandName: 'Nike Air Jorden',
    description:
        'In a color pattern close to the Air Jordan 1 Retro High Bred Toethe brand at Jump Man brand presents us with a version of its Air Jordan 1 Mid with the colorway Banned.The latter refers to the colour worn by Michael Jordan in 1985, which was banned by the league. NBA !',
    price: 729.99,
    bestSeller: 'Best Seller',
    bestChoice: 'Best Choice',
    size: {
      "US": {"5": 5.0,"6": 6.0, "7": 7.0, "8": 8.0},
      "UK": {"4": 4.5,"5": 5.5, "6": 6.5, "7": 7.5},
      "EU": {"38": 38.0, "39": 39.0, "40": 40.0, "41": 41.0, "42": 41.0},
    },
    gallery: [
      'https://www.pngmart.com/files/21/Air-Jordan-PNG-Picture.png',
      'https://www.pngmart.com/files/21/Air-Jordan-PNG-Photo.png',
      'https://www.pngmart.com/files/21/Air-Jordan-PNG-Picture.png'
    ],
  ),
  BestSeller(
    image: 'https://www.pngmart.com/files/21/Air-Jordan-PNG-Photo.png',
    brandName: 'Nike Air Max',
    description:
        'In a color pattern close to the Air Jordan 1 Retro High Bred Toethe brand at Jump Man brand presents us with a version of its Air Jordan 1 Mid with the colorway Banned.The latter refers to the colour worn by Michael Jordan in 1985, which was banned by the league. NBA !',
    price: 929.99,
    bestSeller: 'Best Seller',
    bestChoice: 'Best Choice',
    size: {
      "US": {"6": 6.0, "7": 7.0, "8": 8.0},
      "UK": {"5": 5.5, "6": 6.5, "7": 7.5},
      "EU": {"39": 39.0, "40": 40.0, "41": 41.0},
    },
    gallery: [
      'https://www.pngmart.com/files/21/Air-Jordan-PNG-Picture.png',
      'https://www.pngmart.com/files/21/Air-Jordan-PNG-Photo.png',
      'https://www.pngmart.com/files/21/Air-Jordan-PNG-Picture.png'
    ],
  ),
  BestSeller(
    image: 'https://www.pngmart.com/files/21/Air-Jordan-PNG-Photo.png',
    brandName: 'Nike Air Max',
    description:
        'In a color pattern close to the Air Jordan 1 Retro High Bred Toethe brand at Jump Man brand presents us with a version of its Air Jordan 1 Mid with the colorway Banned.The latter refers to the colour worn by Michael Jordan in 1985, which was banned by the league. NBA !',
    price: 829.99,
    bestSeller: 'Best Seller',
    bestChoice: 'Best Choice',
    size: {
      "US": {"6": 6.0, "7": 7.0, "8": 8.0},
      "UK": {"5": 5.5, "6": 6.5, "7": 7.5},
      "EU": {"39": 39.0, "40": 40.0, "41": 41.0},
    },
    gallery: [
      'https://www.pngmart.com/files/21/Air-Jordan-PNG-Picture.png',
      'https://www.pngmart.com/files/21/Air-Jordan-PNG-Photo.png',
      'https://www.pngmart.com/files/21/Air-Jordan-PNG-Picture.png'
    ],
  ),
];

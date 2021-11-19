class catlogmodel{
  static List<Item> items=[

  ];
}

class Item{
  final num id;
  final String title;
  final num price;
  final String description;
  final String category;
  final String image;
  Item({required this.id,required this.title,required this.price,required this.category,required this.image, required this.description});

  factory Item.fromMap(Map<String,dynamic> map)=> Item(
      id: map["id"],
      title: map["title"],
      price: map["price"],
      description: map["description"],
      category: map["category"],
      image: map["image"],
    );

  toMap()=>{
    "id":id,
    "title":title,
    "price":price,
    "description":description,
    "category":category,
    "image":image,
  };



}

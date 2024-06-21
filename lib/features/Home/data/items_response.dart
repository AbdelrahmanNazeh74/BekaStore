class ItemResponse {
  final List<String> imageUrl;
  final String name;
  final double price;
  final String details;
  final String category;
  final String option;


  ItemResponse( {required this.category,required this.option,required this.imageUrl, required this.name, required this.price, required this.details});
}

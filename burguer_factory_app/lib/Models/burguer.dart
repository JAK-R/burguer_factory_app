
class Burguer{
  String title;
  double price;
  String image;
  String description;
  Burguer({this.title="", this.price=0.0, this.image="", this.description=""});

}
List<Burguer> burguers = [
  Burguer(
      title: "Magnum",
      price: 234,
      description: LoremIpsum,
      image: "assets/images/bag_1.png",
      
      
      ),];

      String LoremIpsum =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
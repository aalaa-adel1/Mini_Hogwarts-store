class MarketCard{
  String name;
  String image;
  double price;
int counter=0;

  MarketCard({required this.name, required this.image, required this.price});
}

List<MarketCard>item=[
  MarketCard(name: "Gryffindor Scarf", image: "https://cdn.shopify.com/s/files/1/0514/6332/3817/products/CP00010504_1_800x.png?v=1614614255",price: 33.00,),
  MarketCard(name: 'Kids Personalised Gryffindor Robe', image:'https://cdn.shopify.com/s/files/1/0514/6332/3817/products/1296477_1_800x.png?v=1616145395', price:74.95),
  MarketCard(name: 'The Sword of Gryffindor Wand', image:'https://cdn.shopify.com/s/files/1/0514/6332/3817/products/Wand-SwordofGriffindor-600x600px_800x.png?v=1610553273',price: 33.00),
  MarketCard(name: 'Faux Leather Gryffindor Crest Notebook', image:'https://cdn.shopify.com/s/files/1/0514/6332/3817/products/PL00011299_1_800x.png?v=1620297365',price: 15.00),


];
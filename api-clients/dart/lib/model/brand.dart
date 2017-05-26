part of swagger.api;


@Entity()
class Brand {
  /* Name of the brand. */
  @Property(name: 'name')
  String name = null;
  
/* Open Cannabis Product Code for the brand. */
  @Property(name: 'ocpc')
  String ocpc = null;
  
/* URL for brand on Otreeba. */
  @Property(name: 'link')
  String link = null;
  
/* URL for QR that leads to page on Cannabis Reports. */
  @Property(name: 'qr')
  String qr = null;
  
/* URL for brand on Cannabis Reports. */
  @Property(name: 'url')
  String url = null;
  
/* URL for logo for brand. */
  @Property(name: 'image')
  String image = null;
  
/* OCPCs of the flowers from this brand. */
  @Property(name: 'flowers')
  List<String> flowers = [];
  
/* OCPCs of the extracts from this brand. */
  @Property(name: 'extracts')
  List<String> extracts = [];
  
/* OCPCs of the edibles from this brand. */
  @Property(name: 'edibles')
  List<String> edibles = [];
  
/* OCPCs of the products from this brand. */
  @Property(name: 'products')
  List<String> products = [];
  
/* Date and time record was created, UTC. */
  @Property(name: 'createdAt')
  DateTime createdAt = null;
  
/* Date and time record was updated, UTC. */
  @Property(name: 'updatedAt')
  DateTime updatedAt = null;
  
  Brand();

  @override
  String toString()  {
    return 'Brand[name=$name, ocpc=$ocpc, link=$link, qr=$qr, url=$url, image=$image, flowers=$flowers, extracts=$extracts, edibles=$edibles, products=$products, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}


part of swagger.api;


@Entity()
class Flower {
  /* Name of the flowers. */
  @Property(name: 'name')
  String name = null;
  
/* Open Cannabis Product Code for the flowers. */
  @Property(name: 'ocpc')
  String ocpc = null;
  
/* Name and Open Cannabis Product Code of the brand that created these flowers. */
  @Property(name: 'brand')
  Object brand = null;
  
/* Type of flowers. */
  @Property(name: 'type')
  String type = null;
  
/* Name and Open Cannabis Product Code of the strain for these flowers. */
  @Property(name: 'strain')
  Object strain = null;
  
/* Description of the flowers. */
  @Property(name: 'description')
  String description = null;
  
/* URL for QR that leads to page on Cannabis Reports. */
  @Property(name: 'qr')
  String qr = null;
  
/* URL for the flowers on Cannabis Reports. */
  @Property(name: 'url')
  String url = null;
  
/* URL for the main photo of the flowers. */
  @Property(name: 'image')
  String image = null;
  
/* URL for the PDF containing lab testing information for these flowers. */
  @Property(name: 'labTest')
  String labTest = null;
  
/* THC measurement for these flowers. */
  @Property(name: 'thc')
  String thc = null;
  
/* CBD measurement for these flowers. */
  @Property(name: 'cbd')
  String cbd = null;
  
/* Date and time record was created, UTC. */
  @Property(name: 'createdAt')
  DateTime createdAt = null;
  
/* Date and time record was updated, UTC. */
  @Property(name: 'updatedAt')
  DateTime updatedAt = null;
  
  Flower();

  @override
  String toString()  {
    return 'Flower[name=$name, ocpc=$ocpc, brand=$brand, type=$type, strain=$strain, description=$description, qr=$qr, url=$url, image=$image, labTest=$labTest, thc=$thc, cbd=$cbd, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}


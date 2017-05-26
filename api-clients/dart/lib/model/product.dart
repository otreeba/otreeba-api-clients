part of swagger.api;


@Entity()
class Product {
  /* Name of the product. */
  @Property(name: 'name')
  String name = null;
  
/* Open Cannabis Product Code for the product. */
  @Property(name: 'ocpc')
  String ocpc = null;
  
/* Name and Open Cannabis Product Code of the brand that created this product. */
  @Property(name: 'brand')
  Object brand = null;
  
/* Type of product. */
  @Property(name: 'type')
  String type = null;
  
/* Name and Open Cannabis Product Code of the strain for this product. */
  @Property(name: 'strain')
  Object strain = null;
  
/* Description of the product. */
  @Property(name: 'description')
  String description = null;
  
/* URL for QR that leads to page on Cannabis Reports. */
  @Property(name: 'qr')
  String qr = null;
  
/* URL for the product on Cannabis Reports. */
  @Property(name: 'url')
  String url = null;
  
/* URL for the main photo of the product. */
  @Property(name: 'image')
  String image = null;
  
/* URL for the PDF containing lab testing information for this product. */
  @Property(name: 'labTest')
  String labTest = null;
  
/* THC measurement for this product. */
  @Property(name: 'thc')
  String thc = null;
  
/* CBD measurement for this product. */
  @Property(name: 'cbd')
  String cbd = null;
  
/* Cannabis measurement for this product. */
  @Property(name: 'cannabis')
  String cannabis = null;
  
/* Hash oil measurement for this product. */
  @Property(name: 'hashOil')
  String hashOil = null;
  
/* Date and time record was created, UTC. */
  @Property(name: 'createdAt')
  DateTime createdAt = null;
  
/* Date and time record was updated, UTC. */
  @Property(name: 'updatedAt')
  DateTime updatedAt = null;
  
  Product();

  @override
  String toString()  {
    return 'Product[name=$name, ocpc=$ocpc, brand=$brand, type=$type, strain=$strain, description=$description, qr=$qr, url=$url, image=$image, labTest=$labTest, thc=$thc, cbd=$cbd, cannabis=$cannabis, hashOil=$hashOil, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}


part of swagger.api;


@Entity()
class Edible {
  /* Name of the edible. */
  @Property(name: 'name')
  String name = null;
  
/* Open Cannabis Product Code for the edible. */
  @Property(name: 'ocpc')
  String ocpc = null;
  
/* Name and Open Cannabis Product Code of the brand that created this edible. */
  @Property(name: 'brand')
  Object brand = null;
  
/* Type of edible. */
  @Property(name: 'type')
  String type = null;
  
/* Name and Open Cannabis Product Code of the strain for this edible. */
  @Property(name: 'strain')
  Object strain = null;
  
/* Description of the edible. */
  @Property(name: 'description')
  String description = null;
  
/* URL for QR that leads to page on Cannabis Reports. */
  @Property(name: 'qr')
  String qr = null;
  
/* URL for the edible on Cannabis Reports. */
  @Property(name: 'url')
  String url = null;
  
/* URL for the main photo of the edible. */
  @Property(name: 'image')
  String image = null;
  
/* URL for the PDF containing lab testing information for this edible. */
  @Property(name: 'labTest')
  String labTest = null;
  
/* THC measurement for this edible. */
  @Property(name: 'thc')
  String thc = null;
  
/* CBD measurement for this edible. */
  @Property(name: 'cbd')
  String cbd = null;
  
/* Cannabis measurement for this edible. */
  @Property(name: 'cannabis')
  String cannabis = null;
  
/* Hash oil measurement for this edible. */
  @Property(name: 'hashOil')
  String hashOil = null;
  
/* Date and time record was created, UTC. */
  @Property(name: 'createdAt')
  DateTime createdAt = null;
  
/* Date and time record was updated, UTC. */
  @Property(name: 'updatedAt')
  DateTime updatedAt = null;
  
  Edible();

  @override
  String toString()  {
    return 'Edible[name=$name, ocpc=$ocpc, brand=$brand, type=$type, strain=$strain, description=$description, qr=$qr, url=$url, image=$image, labTest=$labTest, thc=$thc, cbd=$cbd, cannabis=$cannabis, hashOil=$hashOil, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}


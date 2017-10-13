part of swagger.api;


@Entity()
class SeedCompany {
  /* Name of the seed company. */
  @Property(name: 'name')
  String name = null;
  
/* Open Cannabis Product Code for the seed company. */
  @Property(name: 'ocpc')
  String ocpc = null;
  
/* Description of the seed company. */
  @Property(name: 'description')
  String description = null;
  
/* URL for QR that leads to page on Cannabis Reports. */
  @Property(name: 'qr')
  String qr = null;
  
/* URL for seed company on Cannabis Reports. */
  @Property(name: 'url')
  String url = null;
  
/* URL for logo for seed company. */
  @Property(name: 'image')
  String image = null;
  
/* Object of countries that this seed company has lineages from. {'Country Name' => 'ISO 3166-1 Two Letter Country Code'} */
  @Property(name: 'lineage')
  Object lineage = null;
  
/* OCPCs of the strains from this seed company. */
  @Property(name: 'strains')
  List<String> strains = [];
  
/* Date and time record was created, UTC. */
  @Property(name: 'createdAt')
  DateTime createdAt = null;
  
/* Date and time record was updated, UTC. */
  @Property(name: 'updatedAt')
  DateTime updatedAt = null;
  
  SeedCompany();

  @override
  String toString()  {
    return 'SeedCompany[name=$name, ocpc=$ocpc, description=$description, qr=$qr, url=$url, image=$image, lineage=$lineage, strains=$strains, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}


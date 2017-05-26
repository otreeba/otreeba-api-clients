part of swagger.api;


@Entity()
class Strain {
  /* Name of the strain. */
  @Property(name: 'name')
  String name = null;
  
/* Open Cannabis Product Code for the strain. */
  @Property(name: 'ocpc')
  String ocpc = null;
  
/* Name and Open Cannabis Product Code of the seed company that created the strain. */
  @Property(name: 'seedCompany')
  Object seedCompany = null;
  
/* URL for QR that leads to page on Cannabis Reports. */
  @Property(name: 'qr')
  String qr = null;
  
/* URL for strain on Cannabis Reports. */
  @Property(name: 'url')
  String url = null;
  
/* URL for the main photo of the strain. */
  @Property(name: 'image')
  String image = null;
  
/* Object of countries that this strain has lineages from. {'Country Name' => 'ISO 3166-1 Two Letter Country Code'} */
  @Property(name: 'lineage')
  Object lineage = null;
  
/* Names of the parents of the strains and their associated Open Cannabis Product Codes. */
  @Property(name: 'genetics')
  Object genetics = null;
  
/* Open Cannabis Product Codes of the children of this strain. */
  @Property(name: 'children')
  List<String> children = [];
  
/* Date and time record was created, UTC. */
  @Property(name: 'createdAt')
  DateTime createdAt = null;
  
/* Date and time record was updated, UTC. */
  @Property(name: 'updatedAt')
  DateTime updatedAt = null;
  
  Strain();

  @override
  String toString()  {
    return 'Strain[name=$name, ocpc=$ocpc, seedCompany=$seedCompany, qr=$qr, url=$url, image=$image, lineage=$lineage, genetics=$genetics, children=$children, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}


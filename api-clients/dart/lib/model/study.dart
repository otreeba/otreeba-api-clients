part of swagger.api;


@Entity()
class Study {
  /* Name of the study. */
  @Property(name: 'name')
  String name = null;
  
/* Year of the study. */
  @Property(name: 'year')
  int year = null;
  
/* Digital Object Identifier for the study. */
  @Property(name: 'doi')
  String doi = null;
  
/* PubMed ID for the study. */
  @Property(name: 'pubMedId')
  String pubMedId = null;
  
/* Slug based on the study name. */
  @Property(name: 'slug')
  String slug = null;
  
/* Key findings for the study. */
  @Property(name: 'keyFindings')
  String keyFindings = null;
  

  @Property(name: 'conditions')
  List<Condition> conditions = [];
  
/* Date and time record was created, UTC. */
  @Property(name: 'createdAt')
  DateTime createdAt = null;
  
/* Date and time record was updated, UTC. */
  @Property(name: 'updatedAt')
  DateTime updatedAt = null;
  
  Study();

  @override
  String toString()  {
    return 'Study[name=$name, year=$year, doi=$doi, pubMedId=$pubMedId, slug=$slug, keyFindings=$keyFindings, conditions=$conditions, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}


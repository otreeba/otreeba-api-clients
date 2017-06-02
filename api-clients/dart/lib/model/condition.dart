part of swagger.api;


@Entity()
class Condition {
  /* Name of the condition. */
  @Property(name: 'name')
  String name = null;
  
/* Slug based on the condition name. */
  @Property(name: 'slug')
  String slug = null;
  
/* Description of the condition. */
  @Property(name: 'description')
  String description = null;
  
/* Date and time record was created, UTC. */
  @Property(name: 'createdAt')
  DateTime createdAt = null;
  
/* Date and time record was updated, UTC. */
  @Property(name: 'updatedAt')
  DateTime updatedAt = null;
  
  Condition();

  @override
  String toString()  {
    return 'Condition[name=$name, slug=$slug, description=$description, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

}


part of swagger.api;


@Entity()
class InlineResponse2001Meta {
  /* Gets the Strains for a Seed Company listing from a given OCPC. */
  @Property(name: 'pagination')
  Pagination pagination = null;
  
  InlineResponse2001Meta();

  @override
  String toString()  {
    return 'InlineResponse2001Meta[pagination=$pagination, ]';
  }

}


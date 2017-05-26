part of swagger.api;


@Entity()
class InlineResponse200Meta {
  /* Gets the Strains for a Seed Company listing from a given OCPC. */
  @Property(name: 'pagination')
  Pagination pagination = null;
  
  InlineResponse200Meta();

  @override
  String toString()  {
    return 'InlineResponse200Meta[pagination=$pagination, ]';
  }

}


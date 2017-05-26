part of swagger.api;


@Entity()
class InlineResponse2001Meta {
  /* Gets the current list of Seed Comapnies. */
  @Property(name: 'pagination')
  Pagination pagination = null;
  
  InlineResponse2001Meta();

  @override
  String toString()  {
    return 'InlineResponse2001Meta[pagination=$pagination, ]';
  }

}


part of swagger.api;


@Entity()
class InlineResponse2005Meta {
  /* Gets the current list of Brands. */
  @Property(name: 'pagination')
  Pagination pagination = null;
  
  InlineResponse2005Meta();

  @override
  String toString()  {
    return 'InlineResponse2005Meta[pagination=$pagination, ]';
  }

}


part of swagger.api;


@Entity()
class InlineResponse2003Meta {
  /* Gets the current list of Extracts. */
  @Property(name: 'pagination')
  Pagination pagination = null;
  
  InlineResponse2003Meta();

  @override
  String toString()  {
    return 'InlineResponse2003Meta[pagination=$pagination, ]';
  }

}


part of swagger.api;


@Entity()
class InlineResponse2004Meta {
  /* Gets the current list of Flowers. */
  @Property(name: 'pagination')
  Pagination pagination = null;
  
  InlineResponse2004Meta();

  @override
  String toString()  {
    return 'InlineResponse2004Meta[pagination=$pagination, ]';
  }

}


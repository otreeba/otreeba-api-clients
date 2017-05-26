part of swagger.api;


@Entity()
class InlineResponse2002Meta {
  /* Gets the current list of Edibles. */
  @Property(name: 'pagination')
  Pagination pagination = null;
  
  InlineResponse2002Meta();

  @override
  String toString()  {
    return 'InlineResponse2002Meta[pagination=$pagination, ]';
  }

}


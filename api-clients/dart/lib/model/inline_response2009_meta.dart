part of swagger.api;


@Entity()
class InlineResponse2009Meta {
  /* Gets the current list of Products for a Brand. */
  @Property(name: 'pagination')
  Pagination pagination = null;
  
  InlineResponse2009Meta();

  @override
  String toString()  {
    return 'InlineResponse2009Meta[pagination=$pagination, ]';
  }

}


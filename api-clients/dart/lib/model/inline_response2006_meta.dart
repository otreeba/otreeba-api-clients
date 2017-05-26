part of swagger.api;


@Entity()
class InlineResponse2006Meta {
  /* Gets the current list of Flowers for a Brand. */
  @Property(name: 'pagination')
  Pagination pagination = null;
  
  InlineResponse2006Meta();

  @override
  String toString()  {
    return 'InlineResponse2006Meta[pagination=$pagination, ]';
  }

}


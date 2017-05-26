part of swagger.api;


@Entity()
class InlineResponse2007Meta {
  /* Gets the current list of Extracts for a Brand. */
  @Property(name: 'pagination')
  Pagination pagination = null;
  
  InlineResponse2007Meta();

  @override
  String toString()  {
    return 'InlineResponse2007Meta[pagination=$pagination, ]';
  }

}


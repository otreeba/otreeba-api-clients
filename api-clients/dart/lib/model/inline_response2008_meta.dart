part of swagger.api;


@Entity()
class InlineResponse2008Meta {
  /* Gets the current list of Edibles for a Brand. */
  @Property(name: 'pagination')
  Pagination pagination = null;
  
  InlineResponse2008Meta();

  @override
  String toString()  {
    return 'InlineResponse2008Meta[pagination=$pagination, ]';
  }

}


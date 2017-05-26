part of swagger.api;


@Entity()
class InlineResponse20010Meta {
  /* Gets the current list of Products. */
  @Property(name: 'pagination')
  Pagination pagination = null;
  
  InlineResponse20010Meta();

  @override
  String toString()  {
    return 'InlineResponse20010Meta[pagination=$pagination, ]';
  }

}


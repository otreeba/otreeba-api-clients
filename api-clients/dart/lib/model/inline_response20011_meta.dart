part of swagger.api;


@Entity()
class InlineResponse20011Meta {
  /* Gets the current list of Strains. */
  @Property(name: 'pagination')
  Pagination pagination = null;
  
  InlineResponse20011Meta();

  @override
  String toString()  {
    return 'InlineResponse20011Meta[pagination=$pagination, ]';
  }

}


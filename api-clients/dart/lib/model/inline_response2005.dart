part of swagger.api;


@Entity()
class InlineResponse2005 {
  /* Gets the current list of Brands. */
  @Property(name: 'meta')
  Meta meta = null;
  
  InlineResponse2005();

  @override
  String toString()  {
    return 'InlineResponse2005[meta=$meta, ]';
  }

}


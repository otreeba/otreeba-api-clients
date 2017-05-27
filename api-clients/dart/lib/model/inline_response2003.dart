part of swagger.api;


@Entity()
class InlineResponse2003 {
  /* Gets the current list of Extracts. */
  @Property(name: 'meta')
  Meta meta = null;
  
  InlineResponse2003();

  @override
  String toString()  {
    return 'InlineResponse2003[meta=$meta, ]';
  }

}


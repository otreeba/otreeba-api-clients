part of swagger.api;


@Entity()
class InlineResponse2006 {
  /* Gets the current list of Flowers for a Brand. */
  @Property(name: 'meta')
  Meta meta = null;
  
  InlineResponse2006();

  @override
  String toString()  {
    return 'InlineResponse2006[meta=$meta, ]';
  }

}


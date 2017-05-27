part of swagger.api;


@Entity()
class InlineResponse2009 {
  /* Gets the current list of Products for a Brand. */
  @Property(name: 'meta')
  Meta meta = null;
  
  InlineResponse2009();

  @override
  String toString()  {
    return 'InlineResponse2009[meta=$meta, ]';
  }

}


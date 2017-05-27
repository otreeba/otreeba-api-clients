part of swagger.api;


@Entity()
class InlineResponse2008 {
  /* Gets the current list of Edibles for a Brand. */
  @Property(name: 'meta')
  Meta meta = null;
  
  InlineResponse2008();

  @override
  String toString()  {
    return 'InlineResponse2008[meta=$meta, ]';
  }

}


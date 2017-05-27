part of swagger.api;


@Entity()
class InlineResponse2004 {
  /* Gets the current list of Flowers. */
  @Property(name: 'meta')
  Meta meta = null;
  
  InlineResponse2004();

  @override
  String toString()  {
    return 'InlineResponse2004[meta=$meta, ]';
  }

}


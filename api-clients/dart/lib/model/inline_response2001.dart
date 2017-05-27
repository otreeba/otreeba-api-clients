part of swagger.api;


@Entity()
class InlineResponse2001 {
  /* Gets the current list of Seed Comapnies. */
  @Property(name: 'meta')
  Meta meta = null;
  
  InlineResponse2001();

  @override
  String toString()  {
    return 'InlineResponse2001[meta=$meta, ]';
  }

}


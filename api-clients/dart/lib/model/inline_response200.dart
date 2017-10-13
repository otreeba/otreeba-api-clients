part of swagger.api;


@Entity()
class InlineResponse200 {
  /* Gets the current list of Seed Comapnies. */
  @Property(name: 'meta')
  Meta meta = null;
  
  InlineResponse200();

  @override
  String toString()  {
    return 'InlineResponse200[meta=$meta, ]';
  }

}


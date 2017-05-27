part of swagger.api;


@Entity()
class InlineResponse2007 {
  /* Gets the current list of Extracts for a Brand. */
  @Property(name: 'meta')
  Meta meta = null;
  
  InlineResponse2007();

  @override
  String toString()  {
    return 'InlineResponse2007[meta=$meta, ]';
  }

}


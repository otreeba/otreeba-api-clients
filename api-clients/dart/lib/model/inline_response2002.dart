part of swagger.api;


@Entity()
class InlineResponse2002 {
  /* Gets the current list of Edibles. */
  @Property(name: 'meta')
  Meta meta = null;
  
  InlineResponse2002();

  @override
  String toString()  {
    return 'InlineResponse2002[meta=$meta, ]';
  }

}


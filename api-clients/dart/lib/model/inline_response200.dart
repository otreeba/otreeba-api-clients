part of swagger.api;


@Entity()
class InlineResponse200 {
  
  @Property(name: 'meta')
  InlineResponse200Meta meta = null;
  
  InlineResponse200();

  @override
  String toString()  {
    return 'InlineResponse200[meta=$meta, ]';
  }

}


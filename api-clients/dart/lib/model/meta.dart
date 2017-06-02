part of swagger.api;


@Entity()
class Meta {
  
  @Property(name: 'pagination')
  Pagination pagination = null;
  
  Meta();

  @override
  String toString()  {
    return 'Meta[pagination=$pagination, ]';
  }

}


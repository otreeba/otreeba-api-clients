part of swagger.api;


@Entity()
class Meta {
  /* Information about the pagination of the data. */
  @Property(name: 'pagination')
  Object pagination = null;
  
  Meta();

  @override
  String toString()  {
    return 'Meta[pagination=$pagination, ]';
  }

}


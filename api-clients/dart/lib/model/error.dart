part of swagger.api;


@Entity()
class Error {
  
  @Property(name: 'code')
  int code = null;
  

  @Property(name: 'message')
  String message = null;
  
  Error();

  @override
  String toString()  {
    return 'Error[code=$code, message=$message, ]';
  }

}


library swagger.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';
import 'package:dartson/dartson.dart';
import 'package:dartson/transformers/date_time.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/brands_api.dart';
part 'api/edibles_api.dart';
part 'api/extracts_api.dart';
part 'api/flowers_api.dart';
part 'api/products_api.dart';
part 'api/seed_companies_api.dart';
part 'api/strains_api.dart';
part 'api/studies_api.dart';

part 'model/brand.dart';
part 'model/condition.dart';
part 'model/edible.dart';
part 'model/error.dart';
part 'model/extract.dart';
part 'model/flower.dart';
part 'model/inline_response200.dart';
part 'model/inline_response2001.dart';
part 'model/inline_response20010.dart';
part 'model/inline_response20011.dart';
part 'model/inline_response20012.dart';
part 'model/inline_response20013.dart';
part 'model/inline_response2001_meta.dart';
part 'model/inline_response2002.dart';
part 'model/inline_response2003.dart';
part 'model/inline_response2004.dart';
part 'model/inline_response2005.dart';
part 'model/inline_response2006.dart';
part 'model/inline_response2007.dart';
part 'model/inline_response2008.dart';
part 'model/inline_response2009.dart';
part 'model/meta.dart';
part 'model/pagination.dart';
part 'model/product.dart';
part 'model/seed_company.dart';
part 'model/strain.dart';
part 'model/study.dart';


ApiClient defaultApiClient = new ApiClient();


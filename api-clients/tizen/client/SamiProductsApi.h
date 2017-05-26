#ifndef SamiProductsApi_H_
#define SamiProductsApi_H_

#include <FNet.h>
#include "SamiApiClient.h"
#include "SamiError.h"

using Tizen::Base::Integer;
#include "SamiInline_response_200_10.h"
#include "SamiProduct.h"
using Tizen::Base::String;

using namespace Tizen::Net::Http;

namespace Swagger {

class SamiProductsApi {
public:
  SamiProductsApi();
  virtual ~SamiProductsApi();

  SamiProduct* 
  getProductByOcpcWithCompletion(String* ocpc, void (* handler)(SamiProduct*, SamiError*));
  SamiInline_response_200_10* 
  getProductsWithCompletion(Integer* page, Integer* count, String* sort, void (* handler)(SamiInline_response_200_10*, SamiError*));
  static String getBasePath() {
    return L"https://api.otreeba.com/v1";
  }

private:
  SamiApiClient* client;
};


} /* namespace Swagger */

#endif /* SamiProductsApi_H_ */

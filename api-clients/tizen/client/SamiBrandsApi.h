#ifndef SamiBrandsApi_H_
#define SamiBrandsApi_H_

#include <FNet.h>
#include "SamiApiClient.h"
#include "SamiError.h"

using Tizen::Base::Integer;
#include "SamiBrand.h"
#include "SamiInline_response_200_5.h"
#include "SamiInline_response_200_6.h"
#include "SamiInline_response_200_7.h"
#include "SamiInline_response_200_8.h"
#include "SamiInline_response_200_9.h"
using Tizen::Base::String;

using namespace Tizen::Net::Http;

namespace Swagger {

class SamiBrandsApi {
public:
  SamiBrandsApi();
  virtual ~SamiBrandsApi();

  SamiBrand* 
  getBrandByOcpcWithCompletion(String* ocpc, void (* handler)(SamiBrand*, SamiError*));
  SamiInline_response_200_8* 
  getBrandEdiblesWithCompletion(String* ocpc, Integer* page, Integer* count, String* sort, void (* handler)(SamiInline_response_200_8*, SamiError*));
  SamiInline_response_200_7* 
  getBrandExtractsWithCompletion(String* ocpc, Integer* page, Integer* count, String* sort, void (* handler)(SamiInline_response_200_7*, SamiError*));
  SamiInline_response_200_6* 
  getBrandFlowersWithCompletion(String* ocpc, Integer* page, Integer* count, String* sort, void (* handler)(SamiInline_response_200_6*, SamiError*));
  SamiInline_response_200_9* 
  getBrandProductsWithCompletion(String* ocpc, Integer* page, Integer* count, String* sort, void (* handler)(SamiInline_response_200_9*, SamiError*));
  SamiInline_response_200_5* 
  getBrandsWithCompletion(Integer* page, Integer* count, String* sort, void (* handler)(SamiInline_response_200_5*, SamiError*));
  static String getBasePath() {
    return L"https://api.otreeba.com/v1";
  }

private:
  SamiApiClient* client;
};


} /* namespace Swagger */

#endif /* SamiBrandsApi_H_ */

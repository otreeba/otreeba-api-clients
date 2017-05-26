#ifndef SamiFlowersApi_H_
#define SamiFlowersApi_H_

#include <FNet.h>
#include "SamiApiClient.h"
#include "SamiError.h"

using Tizen::Base::Integer;
#include "SamiFlower.h"
#include "SamiInline_response_200_4.h"
using Tizen::Base::String;

using namespace Tizen::Net::Http;

namespace Swagger {

class SamiFlowersApi {
public:
  SamiFlowersApi();
  virtual ~SamiFlowersApi();

  SamiFlower* 
  getFlowerByOcpcWithCompletion(String* ocpc, void (* handler)(SamiFlower*, SamiError*));
  SamiInline_response_200_4* 
  getFlowersWithCompletion(Integer* page, Integer* count, String* sort, void (* handler)(SamiInline_response_200_4*, SamiError*));
  static String getBasePath() {
    return L"https://api.otreeba.com/v1";
  }

private:
  SamiApiClient* client;
};


} /* namespace Swagger */

#endif /* SamiFlowersApi_H_ */

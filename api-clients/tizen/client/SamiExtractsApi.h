#ifndef SamiExtractsApi_H_
#define SamiExtractsApi_H_

#include <FNet.h>
#include "SamiApiClient.h"
#include "SamiError.h"

using Tizen::Base::Integer;
#include "SamiExtract.h"
#include "SamiInline_response_200_3.h"
using Tizen::Base::String;

using namespace Tizen::Net::Http;

namespace Swagger {

class SamiExtractsApi {
public:
  SamiExtractsApi();
  virtual ~SamiExtractsApi();

  SamiExtract* 
  getExtractByOcpcWithCompletion(String* ocpc, void (* handler)(SamiExtract*, SamiError*));
  SamiInline_response_200_3* 
  getExtractsWithCompletion(Integer* page, Integer* count, String* sort, void (* handler)(SamiInline_response_200_3*, SamiError*));
  static String getBasePath() {
    return L"https://api.otreeba.com/v1";
  }

private:
  SamiApiClient* client;
};


} /* namespace Swagger */

#endif /* SamiExtractsApi_H_ */

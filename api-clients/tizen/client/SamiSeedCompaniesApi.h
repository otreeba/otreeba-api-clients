#ifndef SamiSeedCompaniesApi_H_
#define SamiSeedCompaniesApi_H_

#include <FNet.h>
#include "SamiApiClient.h"
#include "SamiError.h"

using Tizen::Base::Integer;
#include "SamiInline_response_200.h"
#include "SamiInline_response_200_1.h"
#include "SamiSeedCompany.h"
using Tizen::Base::String;

using namespace Tizen::Net::Http;

namespace Swagger {

class SamiSeedCompaniesApi {
public:
  SamiSeedCompaniesApi();
  virtual ~SamiSeedCompaniesApi();

  SamiInline_response_200_1* 
  getSeedCompaniesWithCompletion(Integer* page, Integer* count, String* sort, void (* handler)(SamiInline_response_200_1*, SamiError*));
  SamiSeedCompany* 
  getSeedCompanyByOcpcWithCompletion(String* ocpc, void (* handler)(SamiSeedCompany*, SamiError*));
  SamiInline_response_200* 
  getSeedCompanyStrainsByOcpcWithCompletion(String* ocpc, Integer* page, Integer* count, void (* handler)(SamiInline_response_200*, SamiError*));
  static String getBasePath() {
    return L"https://api.otreeba.com/v1";
  }

private:
  SamiApiClient* client;
};


} /* namespace Swagger */

#endif /* SamiSeedCompaniesApi_H_ */

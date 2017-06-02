/*
 * SamiMeta.h
 * 
 * 
 */

#ifndef SamiMeta_H_
#define SamiMeta_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiPagination.h"


namespace Swagger {

class SamiMeta: public SamiObject {
public:
    SamiMeta();
    SamiMeta(String* json);
    virtual ~SamiMeta();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiMeta* fromJson(String* obj);

    SamiPagination* getPPagination();
    void setPPagination(SamiPagination* pPagination);

private:
    SamiPagination* pPagination;
};

} /* namespace Swagger */

#endif /* SamiMeta_H_ */

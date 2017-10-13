/*
 * SamiInline_response_200_1_meta.h
 * 
 * Gets the Strains for a Seed Company listing from a given OCPC.
 */

#ifndef SamiInline_response_200_1_meta_H_
#define SamiInline_response_200_1_meta_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiPagination.h"


namespace Swagger {

class SamiInline_response_200_1_meta: public SamiObject {
public:
    SamiInline_response_200_1_meta();
    SamiInline_response_200_1_meta(String* json);
    virtual ~SamiInline_response_200_1_meta();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiInline_response_200_1_meta* fromJson(String* obj);

    SamiPagination* getPPagination();
    void setPPagination(SamiPagination* pPagination);

private:
    SamiPagination* pPagination;
};

} /* namespace Swagger */

#endif /* SamiInline_response_200_1_meta_H_ */

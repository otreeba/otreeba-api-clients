/*
 * SamiInline_response_200_9.h
 * 
 * 
 */

#ifndef SamiInline_response_200_9_H_
#define SamiInline_response_200_9_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiInline_response_200_9_meta.h"


namespace Swagger {

class SamiInline_response_200_9: public SamiObject {
public:
    SamiInline_response_200_9();
    SamiInline_response_200_9(String* json);
    virtual ~SamiInline_response_200_9();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiInline_response_200_9* fromJson(String* obj);

    SamiInline_response_200_9_meta* getPMeta();
    void setPMeta(SamiInline_response_200_9_meta* pMeta);

private:
    SamiInline_response_200_9_meta* pMeta;
};

} /* namespace Swagger */

#endif /* SamiInline_response_200_9_H_ */

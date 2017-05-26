/*
 * SamiStrain.h
 * 
 * 
 */

#ifndef SamiStrain_H_
#define SamiStrain_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiObject.h"
using Tizen::Base::Collection::IList;
using Tizen::Base::DateTime;
using Tizen::Base::String;


namespace Swagger {

class SamiStrain: public SamiObject {
public:
    SamiStrain();
    SamiStrain(String* json);
    virtual ~SamiStrain();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiStrain* fromJson(String* obj);

    String* getPName();
    void setPName(String* pName);
    String* getPOcpc();
    void setPOcpc(String* pOcpc);
    SamiObject* getPSeedCompany();
    void setPSeedCompany(SamiObject* pSeedCompany);
    String* getPQr();
    void setPQr(String* pQr);
    String* getPUrl();
    void setPUrl(String* pUrl);
    String* getPImage();
    void setPImage(String* pImage);
    SamiObject* getPLineage();
    void setPLineage(SamiObject* pLineage);
    SamiObject* getPGenetics();
    void setPGenetics(SamiObject* pGenetics);
    IList* getPChildren();
    void setPChildren(IList* pChildren);
    DateTime* getPCreatedAt();
    void setPCreatedAt(DateTime* pCreatedAt);
    DateTime* getPUpdatedAt();
    void setPUpdatedAt(DateTime* pUpdatedAt);

private:
    String* pName;
String* pOcpc;
SamiObject* pSeedCompany;
String* pQr;
String* pUrl;
String* pImage;
SamiObject* pLineage;
SamiObject* pGenetics;
IList* pChildren;
DateTime* pCreatedAt;
DateTime* pUpdatedAt;
};

} /* namespace Swagger */

#endif /* SamiStrain_H_ */

/*
 * SamiSeedCompany.h
 * 
 * 
 */

#ifndef SamiSeedCompany_H_
#define SamiSeedCompany_H_

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

class SamiSeedCompany: public SamiObject {
public:
    SamiSeedCompany();
    SamiSeedCompany(String* json);
    virtual ~SamiSeedCompany();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiSeedCompany* fromJson(String* obj);

    String* getPName();
    void setPName(String* pName);
    String* getPOcpc();
    void setPOcpc(String* pOcpc);
    String* getPQr();
    void setPQr(String* pQr);
    String* getPUrl();
    void setPUrl(String* pUrl);
    String* getPImage();
    void setPImage(String* pImage);
    SamiObject* getPLineage();
    void setPLineage(SamiObject* pLineage);
    IList* getPStrains();
    void setPStrains(IList* pStrains);
    DateTime* getPCreatedAt();
    void setPCreatedAt(DateTime* pCreatedAt);
    DateTime* getPUpdatedAt();
    void setPUpdatedAt(DateTime* pUpdatedAt);

private:
    String* pName;
String* pOcpc;
String* pQr;
String* pUrl;
String* pImage;
SamiObject* pLineage;
IList* pStrains;
DateTime* pCreatedAt;
DateTime* pUpdatedAt;
};

} /* namespace Swagger */

#endif /* SamiSeedCompany_H_ */

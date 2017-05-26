/*
 * SamiEdible.h
 * 
 * 
 */

#ifndef SamiEdible_H_
#define SamiEdible_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiObject.h"
using Tizen::Base::DateTime;
using Tizen::Base::String;


namespace Swagger {

class SamiEdible: public SamiObject {
public:
    SamiEdible();
    SamiEdible(String* json);
    virtual ~SamiEdible();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiEdible* fromJson(String* obj);

    String* getPName();
    void setPName(String* pName);
    String* getPOcpc();
    void setPOcpc(String* pOcpc);
    SamiObject* getPBrand();
    void setPBrand(SamiObject* pBrand);
    String* getPType();
    void setPType(String* pType);
    SamiObject* getPStrain();
    void setPStrain(SamiObject* pStrain);
    String* getPDescription();
    void setPDescription(String* pDescription);
    String* getPQr();
    void setPQr(String* pQr);
    String* getPUrl();
    void setPUrl(String* pUrl);
    String* getPImage();
    void setPImage(String* pImage);
    String* getPLabTest();
    void setPLabTest(String* pLabTest);
    String* getPThc();
    void setPThc(String* pThc);
    String* getPCbd();
    void setPCbd(String* pCbd);
    String* getPCannabis();
    void setPCannabis(String* pCannabis);
    String* getPHashOil();
    void setPHashOil(String* pHashOil);
    DateTime* getPCreatedAt();
    void setPCreatedAt(DateTime* pCreatedAt);
    DateTime* getPUpdatedAt();
    void setPUpdatedAt(DateTime* pUpdatedAt);

private:
    String* pName;
String* pOcpc;
SamiObject* pBrand;
String* pType;
SamiObject* pStrain;
String* pDescription;
String* pQr;
String* pUrl;
String* pImage;
String* pLabTest;
String* pThc;
String* pCbd;
String* pCannabis;
String* pHashOil;
DateTime* pCreatedAt;
DateTime* pUpdatedAt;
};

} /* namespace Swagger */

#endif /* SamiEdible_H_ */

/**
 * Otreeba Open Cannabis API
 * This is an open, canonical database of cannabis seed companies, strains, brands, products, retailers, and studies from [Otreeba](https://otreeba.com). It is written on the OpenAPI Specification AKA Swagger. You can find out more about the Open API Initiative at [https://www.openapis.org/](https://www.openapis.org), or more info on Swagger at [http://swagger.io/](http://swagger.io/).
 *
 * OpenAPI spec version: 1.0.0
 * Contact: api@otreeba.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

package io.swagger.client.api

import io.swagger.client.model.InlineResponse20011
import io.swagger.client.model.Strain
import io.swagger.client.ApiInvoker
import io.swagger.client.ApiException

import com.sun.jersey.multipart.FormDataMultiPart
import com.sun.jersey.multipart.file.FileDataBodyPart

import javax.ws.rs.core.MediaType

import java.io.File
import java.util.Date

import scala.collection.mutable.HashMap

class StrainsApi(val defBasePath: String = "https://api.otreeba.com/v1",
                        defApiInvoker: ApiInvoker = ApiInvoker) {
  var basePath = defBasePath
  var apiInvoker = defApiInvoker

  def addHeader(key: String, value: String) = apiInvoker.defaultHeaders += key -> value 

  /**
   * Find strain by Open Cannabis Product Code (OCPC).
   * Returns a single strain.
   * @param ocpc OCPC of the strain to return. 
   * @return Strain
   */
  def getStrainByOcpc(ocpc: String): Option[Strain] = {
    // create path and map variables
    val path = "/strains/{ocpc}".replaceAll("\\{format\\}", "json").replaceAll("\\{" + "ocpc" + "\\}",apiInvoker.escape(ocpc))

    val contentTypes = List("application/json")
    val contentType = contentTypes(0)

    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]
    val formParams = new HashMap[String, String]

    if (ocpc == null) throw new Exception("Missing required parameter 'ocpc' when calling StrainsApi->getStrainByOcpc")

    

    var postBody: AnyRef = null

    if (contentType.startsWith("multipart/form-data")) {
      val mp = new FormDataMultiPart
      postBody = mp
    } else {
    }

    try {
      apiInvoker.invokeApi(basePath, path, "GET", queryParams.toMap, formParams.toMap, postBody, headerParams.toMap, contentType) match {
        case s: String =>
           Some(apiInvoker.deserialize(s, "", classOf[Strain]).asInstanceOf[Strain])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }

  /**
   * Get a list of all current strains.
   * Returns a paginated list of strains.
   * @param page Page to be returned. (optional)
   * @param count The number of items to return. Default 10. Max 50. (optional, default to 10)
   * @param sort How to sort the items. (optional, default to -createdAt)
   * @return InlineResponse20011
   */
  def getStrains(page: Option[Integer] = None, count: Option[Integer] /* = 10*/, sort: Option[String] /* = -createdAt*/): Option[InlineResponse20011] = {
    // create path and map variables
    val path = "/strains".replaceAll("\\{format\\}", "json")

    val contentTypes = List("application/json")
    val contentType = contentTypes(0)

    val queryParams = new HashMap[String, String]
    val headerParams = new HashMap[String, String]
    val formParams = new HashMap[String, String]

    page.map(paramVal => queryParams += "page" -> paramVal.toString)
    count.map(paramVal => queryParams += "count" -> paramVal.toString)
    sort.map(paramVal => queryParams += "sort" -> paramVal.toString)
    

    var postBody: AnyRef = null

    if (contentType.startsWith("multipart/form-data")) {
      val mp = new FormDataMultiPart
      postBody = mp
    } else {
    }

    try {
      apiInvoker.invokeApi(basePath, path, "GET", queryParams.toMap, formParams.toMap, postBody, headerParams.toMap, contentType) match {
        case s: String =>
           Some(apiInvoker.deserialize(s, "", classOf[InlineResponse20011]).asInstanceOf[InlineResponse20011])
        case _ => None
      }
    } catch {
      case ex: ApiException if ex.code == 404 => None
      case ex: ApiException => throw ex
    }
  }

}

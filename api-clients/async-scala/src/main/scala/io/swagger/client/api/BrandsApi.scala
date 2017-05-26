package io.swagger.client.api

import io.swagger.client.model.Brand
import io.swagger.client.model.Inline_response_200_5
import io.swagger.client.model.Inline_response_200_6
import io.swagger.client.model.Inline_response_200_7
import io.swagger.client.model.Inline_response_200_8
import io.swagger.client.model.Inline_response_200_9
import com.wordnik.swagger.client._
import scala.concurrent.Future
import collection.mutable

class BrandsApi(client: TransportClient, config: SwaggerConfig) extends ApiClient(client, config) {

  def getBrandByOcpc(ocpc: String)(implicit reader: ClientResponseReader[Brand]): Future[Brand] = {
    // create path and map variables
    val path = (addFmt("/brands/{ocpc}")
        replaceAll ("\\{" + "ocpc" + "\\}",ocpc.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (ocpc == null) throw new Exception("Missing required parameter 'ocpc' when calling BrandsApi->getBrandByOcpc")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getBrandEdibles(ocpc: String,
      page: Option[Integer] = None,
      count: Option[Integer] = Some(10),
      sort: Option[String] = Some(-createdAt)
      )(implicit reader: ClientResponseReader[Inline_response_200_8]): Future[Inline_response_200_8] = {
    // create path and map variables
    val path = (addFmt("/brands/{ocpc}/edibles")
        replaceAll ("\\{" + "ocpc" + "\\}",ocpc.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (ocpc == null) throw new Exception("Missing required parameter 'ocpc' when calling BrandsApi->getBrandEdibles")

    page match {
    case Some(param) => queryParams += "page" -> param.toString
    case _ => queryParams
    }
    count match {
    case Some(param) => queryParams += "count" -> param.toString
    case _ => queryParams
    }
    sort match {
    case Some(param) => queryParams += "sort" -> param.toString
    case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getBrandExtracts(ocpc: String,
      page: Option[Integer] = None,
      count: Option[Integer] = Some(10),
      sort: Option[String] = Some(-createdAt)
      )(implicit reader: ClientResponseReader[Inline_response_200_7]): Future[Inline_response_200_7] = {
    // create path and map variables
    val path = (addFmt("/brands/{ocpc}/extracts")
        replaceAll ("\\{" + "ocpc" + "\\}",ocpc.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (ocpc == null) throw new Exception("Missing required parameter 'ocpc' when calling BrandsApi->getBrandExtracts")

    page match {
    case Some(param) => queryParams += "page" -> param.toString
    case _ => queryParams
    }
    count match {
    case Some(param) => queryParams += "count" -> param.toString
    case _ => queryParams
    }
    sort match {
    case Some(param) => queryParams += "sort" -> param.toString
    case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getBrandFlowers(ocpc: String,
      page: Option[Integer] = None,
      count: Option[Integer] = Some(10),
      sort: Option[String] = Some(-createdAt)
      )(implicit reader: ClientResponseReader[Inline_response_200_6]): Future[Inline_response_200_6] = {
    // create path and map variables
    val path = (addFmt("/brands/{ocpc}/flowers")
        replaceAll ("\\{" + "ocpc" + "\\}",ocpc.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (ocpc == null) throw new Exception("Missing required parameter 'ocpc' when calling BrandsApi->getBrandFlowers")

    page match {
    case Some(param) => queryParams += "page" -> param.toString
    case _ => queryParams
    }
    count match {
    case Some(param) => queryParams += "count" -> param.toString
    case _ => queryParams
    }
    sort match {
    case Some(param) => queryParams += "sort" -> param.toString
    case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getBrandProducts(ocpc: String,
      page: Option[Integer] = None,
      count: Option[Integer] = Some(10),
      sort: Option[String] = Some(-createdAt)
      )(implicit reader: ClientResponseReader[Inline_response_200_9]): Future[Inline_response_200_9] = {
    // create path and map variables
    val path = (addFmt("/brands/{ocpc}/products")
        replaceAll ("\\{" + "ocpc" + "\\}",ocpc.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (ocpc == null) throw new Exception("Missing required parameter 'ocpc' when calling BrandsApi->getBrandProducts")

    page match {
    case Some(param) => queryParams += "page" -> param.toString
    case _ => queryParams
    }
    count match {
    case Some(param) => queryParams += "count" -> param.toString
    case _ => queryParams
    }
    sort match {
    case Some(param) => queryParams += "sort" -> param.toString
    case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getBrands(page: Option[Integer] = None,
      count: Option[Integer] = Some(10),
      sort: Option[String] = Some(-createdAt)
      )(implicit reader: ClientResponseReader[Inline_response_200_5]): Future[Inline_response_200_5] = {
    // create path and map variables
    val path = (addFmt("/brands"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    page match {
    case Some(param) => queryParams += "page" -> param.toString
    case _ => queryParams
    }
    count match {
    case Some(param) => queryParams += "count" -> param.toString
    case _ => queryParams
    }
    sort match {
    case Some(param) => queryParams += "sort" -> param.toString
    case _ => queryParams
    }

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }


}

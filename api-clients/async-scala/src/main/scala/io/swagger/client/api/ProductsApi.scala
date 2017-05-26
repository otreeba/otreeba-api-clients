package io.swagger.client.api

import io.swagger.client.model.Inline_response_200_10
import io.swagger.client.model.Product
import com.wordnik.swagger.client._
import scala.concurrent.Future
import collection.mutable

class ProductsApi(client: TransportClient, config: SwaggerConfig) extends ApiClient(client, config) {

  def getProductByOcpc(ocpc: String)(implicit reader: ClientResponseReader[Product]): Future[Product] = {
    // create path and map variables
    val path = (addFmt("/products/{ocpc}")
        replaceAll ("\\{" + "ocpc" + "\\}",ocpc.toString))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (ocpc == null) throw new Exception("Missing required parameter 'ocpc' when calling ProductsApi->getProductByOcpc")


    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }

  def getProducts(page: Option[Integer] = None,
      count: Option[Integer] = Some(10),
      sort: Option[String] = Some(-createdAt)
      )(implicit reader: ClientResponseReader[Inline_response_200_10]): Future[Inline_response_200_10] = {
    // create path and map variables
    val path = (addFmt("/products"))

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

package io.swagger.client

import io.swagger.client.api._

import com.wordnik.swagger.client._

import java.io.Closeable

class SwaggerClient(config: SwaggerConfig) extends Closeable {
  val locator = config.locator
  val name = config.name

  private[this] val client = transportClient

  protected def transportClient: TransportClient = new RestClient(config)
  
  val brands = new BrandsApi(client, config)
  
  val edibles = new EdiblesApi(client, config)
  
  val extracts = new ExtractsApi(client, config)
  
  val flowers = new FlowersApi(client, config)
  
  val products = new ProductsApi(client, config)
  
  val seedCompanies = new SeedCompaniesApi(client, config)
  
  val strains = new StrainsApi(client, config)
  
  val studies = new StudiesApi(client, config)
  

  def close() {
    client.close()
  }
}

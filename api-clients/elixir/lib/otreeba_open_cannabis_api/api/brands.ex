defmodule OtreebaOpenCannabisAPI.Api.Brands do
  @moduledoc """
  Documentation for OtreebaOpenCannabisAPI.Api.Brands.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.otreeba.com/v1"
  plug Tesla.Middleware.JSON

  @doc """
  Find brand by Open Cannabis Product Code (OCPC).

  Returns a single brand.
  """
  def get_brand_by_ocpc(ocpc) do
    method = [method: :get]
    url = [url: "/brands/#{ocpc}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a list of all current edibles for the given brand.

  Returns a paginated list of edibles.
  """
  def get_brand_edibles(ocpc, page, count, sort) do
    method = [method: :get]
    url = [url: "/brands/#{ocpc}/edibles"]
    query_params = [query: [{:"page", page}, {:"count", count}, {:"sort", sort}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a list of all current extracts for the given brand.

  Returns a paginated list of extracts.
  """
  def get_brand_extracts(ocpc, page, count, sort) do
    method = [method: :get]
    url = [url: "/brands/#{ocpc}/extracts"]
    query_params = [query: [{:"page", page}, {:"count", count}, {:"sort", sort}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a list of all current flowers for the given brand.

  Returns a paginated list of flowers.
  """
  def get_brand_flowers(ocpc, page, count, sort) do
    method = [method: :get]
    url = [url: "/brands/#{ocpc}/flowers"]
    query_params = [query: [{:"page", page}, {:"count", count}, {:"sort", sort}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a list of all current products for the given brand.

  Returns a paginated list of products.
  """
  def get_brand_products(ocpc, page, count, sort) do
    method = [method: :get]
    url = [url: "/brands/#{ocpc}/products"]
    query_params = [query: [{:"page", page}, {:"count", count}, {:"sort", sort}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get a list of all current brands.

  Returns a paginated list of brands.
  """
  def get_brands(page, count, sort) do
    method = [method: :get]
    url = [url: "/brands"]
    query_params = [query: [{:"page", page}, {:"count", count}, {:"sort", sort}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end

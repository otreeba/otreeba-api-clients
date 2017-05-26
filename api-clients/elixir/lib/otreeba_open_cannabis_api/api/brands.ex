defmodule OtreebaOpenCannabisAPI.Api.Brands do
  @moduledoc """
  Documentation for OtreebaOpenCannabisAPI.Api.Brands.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.otreeba.com/v1"
  plug Tesla.Middleware.JSON

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

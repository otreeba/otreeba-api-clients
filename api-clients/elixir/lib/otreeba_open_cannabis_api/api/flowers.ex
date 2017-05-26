defmodule OtreebaOpenCannabisAPI.Api.Flowers do
  @moduledoc """
  Documentation for OtreebaOpenCannabisAPI.Api.Flowers.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.otreeba.com/v1"
  plug Tesla.Middleware.JSON

  def get_flower_by_ocpc(ocpc) do
    method = [method: :get]
    url = [url: "/flowers/#{ocpc}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def get_flowers(page, count, sort) do
    method = [method: :get]
    url = [url: "/flowers"]
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

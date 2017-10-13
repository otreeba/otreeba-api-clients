defmodule OtreebaOpenCannabisAPI.Api.Edibles do
  @moduledoc """
  Documentation for OtreebaOpenCannabisAPI.Api.Edibles.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.otreeba.com/v1"
  plug Tesla.Middleware.JSON

  @doc """
  Find edible by Open Cannabis Product Code (OCPC).

  Returns a single edible.
  """
  def get_edible_by_ocpc(ocpc) do
    method = [method: :get]
    url = [url: "/edibles/#{ocpc}"]
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
  Get a list of all current edibles.

  Returns a paginated list of edibles.
  """
  def get_edibles(page, count, sort) do
    method = [method: :get]
    url = [url: "/edibles"]
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

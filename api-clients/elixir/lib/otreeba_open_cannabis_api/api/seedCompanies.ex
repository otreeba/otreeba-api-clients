defmodule OtreebaOpenCannabisAPI.Api.SeedCompanies do
  @moduledoc """
  Documentation for OtreebaOpenCannabisAPI.Api.SeedCompanies.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.otreeba.com/v1"
  plug Tesla.Middleware.JSON

  @doc """
  Get a list of all current seed companies.

  Returns a paginated list of seed companies.
  """
  def get_seed_companies(page, count, sort) do
    method = [method: :get]
    url = [url: "/seed-companies"]
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
  Find seed company by Open Cannabis Product Code (OCPC).

  Returns a single seed company.
  """
  def get_seed_company_by_ocpc(ocpc) do
    method = [method: :get]
    url = [url: "/seed-companies/#{ocpc}"]
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
  Find strains for a seed company by Open Cannabis Product Code (OCPC).

  Returns a paginated list of strains for a single seed company.
  """
  def get_seed_company_strains_by_ocpc(ocpc, page, count) do
    method = [method: :get]
    url = [url: "/seed-companies/#{ocpc}/strains"]
    query_params = [query: [{:"page", page}, {:"count", count}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end

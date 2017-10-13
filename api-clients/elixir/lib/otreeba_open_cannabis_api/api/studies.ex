defmodule OtreebaOpenCannabisAPI.Api.Studies do
  @moduledoc """
  Documentation for OtreebaOpenCannabisAPI.Api.Studies.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://api.otreeba.com/v1"
  plug Tesla.Middleware.JSON

  @doc """
  Get a list of all current studies.

  Returns a paginated list of studies.
  """
  def get_studies(page, count, sort) do
    method = [method: :get]
    url = [url: "/studies"]
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
  Get a list of all current studies for a given condition.

  Returns a paginated list of studies.
  """
  def get_studies_by_condition(condition_slug, page, count, sort) do
    method = [method: :get]
    url = [url: "/studies/conditions/#{condition_slug}"]
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
  Get a list of all current conditions for studies.

  Returns a list of all current conditions for studies.
  """
  def get_studies_conditions(sort) do
    method = [method: :get]
    url = [url: "/studies/conditions"]
    query_params = [query: [{:"sort", sort}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Find study by DOI, PubMed ID, or slug.

  Returns a single study.
  """
  def get_study_by_identifier(identifier_type, identifier) do
    method = [method: :get]
    url = [url: "/studies/{identifierType}/#{identifier}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end

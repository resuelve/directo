defmodule Directo.Parser do
  @moduledoc """
  Handle all Directo parser responses
  """

  alias HTTPoison.Response

  def parse(%Response{body: body}, _type) do
    {:ok, body}
  end

  def parse(response, _type) do
    {:error, response}
  end
end

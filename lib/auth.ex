defmodule Directo.Auth do
  @moduledoc """
  Module helper to get auth credentials
  """

  @doc "Gets credentials from environment variables set in config"
  @spec get_credentials() :: tuple()
  def get_credentials() do
    username = Application.get_env(:directo, :username)
    password = Application.get_env(:directo, :password)

    {username, password}
  end
end

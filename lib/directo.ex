defmodule Directo do
  @moduledoc """
  Documentation for Directo.
  """

  alias Directo.Api.Sms
  alias Directo.Auth

  @parser Application.get_env(:directo, :parser) || Directo.Parser

  @doc """
  Send simple sms
  """
  def send_sms(params) do
    Auth.get_credentials()
    |> Sms.send(params)
    |> @parser.parse(:send_sms)
  end
end

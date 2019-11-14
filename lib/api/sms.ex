defmodule Directo.Api.Sms do
  @moduledoc """
  Apis to handle Directo SMS´s api
  """

  def send({username, password}, params) do
    params_with_auth =
      params
      |> Map.put("username", username)
      |> Map.put("password", password)

    DirectoRequest.post!("", params_with_auth)
  end
end

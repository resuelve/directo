defmodule DirectoTest do
  use ExUnit.Case

  alias HTTPoison.Response
  import Mock

  @ok_response %{}

  test "Should send sms message" do
    with_mocks([
      {
        DirectoRequest,
        [],
        [
          post!: fn _, _ ->
            %Response{body: @ok_response}
          end
        ]
      }
    ]) do
      params = %{
        "number" => "52155XXXXXXXX",
        "message" => "Hola!"
      }

      assert Directo.send_sms(params) == {:ok, @ok_response}
    end
  end
end

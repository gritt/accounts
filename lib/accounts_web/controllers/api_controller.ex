defmodule AccountsWeb.ApiController do
  use AccountsWeb, :controller

  def healthcheck(conn, _params) do
    send_resp(conn, 200, "WORKING")
  end
end

defmodule DevmatchElixir.PageController do
  use DevmatchElixir.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

defmodule Issues.Github do
  require Logger

  @github_url Application.get_env(:issues, :github_url)
  @user_agent [{"User-Agent", "douchuan"}]

  def fetch(user, project) do
    Logger.info("Fetching user #{user}'s project #{project}")

    issues_url(user, project)
    |> HTTPoison.get(@user_agent)
    |> handle_response
  end

  def issues_url(user, project) do
    "#{@github_url}/repos/#{user}/#{project}/issues"
  end

  def handle_response({:ok, %{status_code: 200, body: body}}) do
    Logger.info("Successful response")
    {:ok, :jsx.decode(body)}
  end

  def handle_response({:error, %{status_code: status, body: body}}) do
    Logger.info("Error #{status} returned")
    {:error, :jsx.decode(body)}
  end
end

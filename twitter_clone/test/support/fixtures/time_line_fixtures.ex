defmodule TwitterClone.TimeLineFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TwitterClone.TimeLine` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        body: "some body",
        likes_count: 42,
        reposts_count: 42,
        username: "some username"
      })
      |> TwitterClone.TimeLine.create_post()

    post
  end
end

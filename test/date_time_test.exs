defmodule CurrentTime.DateTimeTest do
  use ExUnit.Case

  describe "CurrentTime.DateTime" do
    test "implemented for DateTime" do
      dt = DateTime.utc_now() |> DateTime.add(-200, :minute)
      assert CurrentTime.DateTime.now(dt) == dt
    end

    test "implemented for NaiveDateTime" do
      ndt = NaiveDateTime.utc_now() |> NaiveDateTime.add(-200, :minute)
      assert CurrentTime.DateTime.now(ndt) == DateTime.from_naive!(ndt, "Etc/UTC")
    end
  end
end

defmodule CurrentTime.TimeTest do
  use ExUnit.Case

  describe "CurrentTime.Time" do
    test "implemented for Time" do
      t = Time.utc_now() |> Time.add(-200, :minute)
      assert CurrentTime.Time.now(t) == t
    end

    test "implemented for DateTime" do
      dt = DateTime.utc_now() |> DateTime.add(-200, :minute)
      t = DateTime.to_time(dt)
      assert CurrentTime.Time.now(dt) == t
    end

    test "implemented for NaiveDateTime" do
      dt = NaiveDateTime.utc_now() |> NaiveDateTime.add(-200, :minute)
      t = NaiveDateTime.to_time(dt)
      assert CurrentTime.Time.now(dt) == t
    end
  end
end

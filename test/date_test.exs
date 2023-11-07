defmodule CurrentTime.DateTest do
  use ExUnit.Case

  describe "CurrentTime.Date" do
    test "implemented for DateTime" do
      dt = DateTime.utc_now() |> DateTime.add(-200, :minute)
      assert CurrentTime.Date.now(dt) == DateTime.to_date(dt)
    end

    test "implemented for NaiveDateTime" do
      ndt = NaiveDateTime.utc_now() |> NaiveDateTime.add(-200, :minute)
      assert CurrentTime.Date.now(ndt) == NaiveDateTime.to_date(ndt)
    end
  end
end

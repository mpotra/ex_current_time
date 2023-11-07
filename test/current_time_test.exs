defmodule CurrentTime.CurrentTimeTest do
  use ExUnit.Case

  describe "CurrentTime" do
    test "datetime/1 returns a DateTime" do
      dt = DateTime.utc_now() |> DateTime.add(-200, :minute)
      ndt = NaiveDateTime.utc_now() |> NaiveDateTime.add(-200, :minute)
      assert CurrentTime.to_datetime(dt) == dt
      assert CurrentTime.to_datetime(ndt) == DateTime.from_naive!(ndt, "Etc/UTC")
    end

    test "date/1 returns a Date" do
      dt = DateTime.utc_now() |> DateTime.add(-200, :minute)
      ndt = NaiveDateTime.utc_now() |> NaiveDateTime.add(-200, :minute)
      assert CurrentTime.to_date(dt) == DateTime.to_date(dt)
      assert CurrentTime.to_date(ndt) == NaiveDateTime.to_date(ndt)
    end

    test "time/1 returns a Time" do
      dt = DateTime.utc_now() |> DateTime.add(-200, :minute)
      ndt = NaiveDateTime.utc_now() |> NaiveDateTime.add(-200, :minute)
      assert CurrentTime.to_time(dt) == DateTime.to_time(dt)
      assert CurrentTime.to_time(ndt) == NaiveDateTime.to_time(ndt)
    end
  end
end

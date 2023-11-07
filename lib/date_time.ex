defprotocol CurrentTime.DateTime do
  @moduledoc """
  DateTime protocol used by `CurrentTime` module and implemented for
  `DateTime` and `NaiveDateTime` structs.

  This protocol requires the `now/1` function to be implemented and to return a `DateTime` struct.

  For `NaiveDateTime` the implementation returns `DateTime.from_naive!(naive_dt, "Etc/UTC")`

  ## Examples
  ### Implementing for a custom module struct

      defmodule MyStringDateTime do
        defstruct [:iso8601_value]
      end

      defimpl CurrentTime.DateTime, for: MyStringDateTime do
        def now(%{iso8601_value: value}) do
          {:ok, datetime, _} = DateTime.from_iso8601(value, Calendar.ISO, :basic)
          datetime
        end
      end

      iex> msdt = %MyStringDateTime{iso8601_value: "20150123T235007.123+0230"}
      iex> CurrentTime.DateTime.now(msdt)
      ~U[2015-01-23 21:20:07.123Z]
  """
  @spec now(t()) :: DateTime.t()
  def now(datetime)
end

defprotocol CurrentTime.Date do
  @moduledoc """
  Date protocol used by `CurrentTime` module and implemented for
  `DateTime`, `NaiveDateTime` and `Date` structs.

  This protocol requires the `now/1` function to be implemented
  and to return a `Date` struct.

  ## Examples
  ### Implementing for a custom module struct

      defmodule MyStringDate do
        defstruct [:value]
      end

      defimpl CurrentTime.Date, for: MyStringDate do
        def now(%{value: value}) do
          Date.from_iso8601!(value)
        end
      end

      iex> msd = %MyStringDate{value: "2015-01-23"}
      iex> CurrentTime.Date.now(msd)
      ~D[2015-01-23]
  """
  @spec now(t()) :: Date.t()
  def now(date)
end

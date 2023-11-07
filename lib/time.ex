defprotocol CurrentTime.Time do
  @moduledoc """
  Date protocol used by `CurrentTime` module and implemented for
  `DateTime`, `NaiveDateTime` and `Time` structs.

  This protocol requires the `now/1` function to be implemented
  and to return a `Time` struct.

  ## Examples
  ### Implementing for a custom module struct

      defmodule MyStringTime do
        defstruct [:value]
      end

      defimpl CurrentTime.Time, for: MyStringTime do
        def now(%{value: value}) do
          Time.from_iso8601!(value)
        end
      end

      iex> mst = %MyStringTime{value: "23:50:07,123Z"}
      iex> CurrentTime.Date.now(mst)
      ~T[23:50:07.123]
  """
  @spec now(t()) :: Time.t()
  def now(time)
end

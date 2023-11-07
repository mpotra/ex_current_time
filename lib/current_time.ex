defmodule CurrentTime do
  @moduledoc """
  CurrentTime provides several protocols that can be implemented for types
  and structs to return `DateTime`, `Date` and `Time` values.

  * `CurrentTime.DateTime` - transforms an implementation into a `DateTime` struct
  * `CurrentTime.Date` - transforms an implementation into a `Date` struct
  * `CurrentTime.Time` - transofmrs an implementation into a `Time` struct

  This module also provides several functions that operate with above protocol
  implementations.

  See each protocol for examples.

  """
  @doc """
  Returns a `DateTime` out of a source that implements `CurrentTime.DateTime` protocol.
  """
  @spec to_datetime(src :: CurrentTime.DateTime.t()) :: DateTime.t()
  def to_datetime(src) do
    CurrentTime.DateTime.now(src)
  end

  @doc """
  Returns a `Date` out of a source that implements `CurrentTime.Date` protocol.
  """
  @spec to_date(src :: CurrentTime.Date.t()) :: Date.t()
  def to_date(src) do
    CurrentTime.Date.now(src)
  end

  @doc """
  Returns a `Time` out of a source that implements `CurrentTime.Time` protocol.
  """
  @spec to_time(src :: CurrentTime.Time.t()) :: Time.t()
  def to_time(src) do
    CurrentTime.Time.now(src)
  end
end

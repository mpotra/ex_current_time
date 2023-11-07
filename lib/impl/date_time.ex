defimpl CurrentTime.DateTime, for: DateTime do
  def now(datetime) do
    datetime
  end
end

defimpl CurrentTime.Date, for: DateTime do
  def now(datetime) do
    DateTime.to_date(datetime)
  end
end

defimpl CurrentTime.Time, for: DateTime do
  def now(datetime) do
    DateTime.to_time(datetime)
  end
end

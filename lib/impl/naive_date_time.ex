defimpl CurrentTime.DateTime, for: NaiveDateTime do
  def now(naive_date_time) do
    DateTime.from_naive!(naive_date_time, "Etc/UTC")
  end
end

defimpl CurrentTime.Date, for: NaiveDateTime do
  def now(naive_date_time) do
    NaiveDateTime.to_date(naive_date_time)
  end
end

defimpl CurrentTime.Time, for: NaiveDateTime do
  def now(naive_date_time) do
    NaiveDateTime.to_time(naive_date_time)
  end
end

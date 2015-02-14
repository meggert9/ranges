json.array!(@five_years) do |five_year|
  json.extract! five_year, :id, :date, :open, :pitopen, :high, :low, :close
  json.url five_year_url(five_year, format: :json)
end

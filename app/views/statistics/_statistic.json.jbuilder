json.extract! statistic, :id, :date, :total_infected, :daily_infected, :total_died, :daily_died, :intubated, :intensive_care, :total_test, :daily_test, :total_recovered, :daily_recovered, :created_at, :updated_at
json.url statistic_url(statistic, format: :json)

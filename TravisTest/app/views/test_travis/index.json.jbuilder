json.array!(@test_travis) do |test_travi|
  json.extract! test_travi, :id, :test1, :test2
  json.url test_travi_url(test_travi, format: :json)
end

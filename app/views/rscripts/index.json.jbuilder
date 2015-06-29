json.array!(@rscripts) do |rscript|
  json.extract! rscript, :id, :title, :code
  json.url rscript_url(rscript, format: :json)
end

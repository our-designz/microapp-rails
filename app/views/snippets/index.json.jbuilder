json.array!(@snippets) do |snippet|
  json.extract! snippet, :id, :snippet, :is_private
  json.url snippet_url(snippet, format: :json)
end

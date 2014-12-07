json.array!(@myblogs) do |myblog|
  json.extract! myblog, :id, :title, :body, :image, :tag
  json.url myblog_url(myblog, format: :json)
end

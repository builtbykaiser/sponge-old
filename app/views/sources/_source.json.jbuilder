json.extract! source, :id, :medium_id, :kind, :author, :title, :url, :created_at, :updated_at
json.url source_url(source, format: :json)

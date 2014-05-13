json.array!(@cookie_watchers) do |cookie_watcher|
  json.extract! cookie_watcher, :id, :name, :cookies
  json.url cookie_watcher_url(cookie_watcher, format: :json)
end

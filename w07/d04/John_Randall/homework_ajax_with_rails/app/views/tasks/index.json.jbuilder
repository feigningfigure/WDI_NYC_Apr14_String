json.array!(@tasks) do |task|
  json.extract! task, :id, :task_text, :due_date
  json.url task_url(task, format: :json)
end

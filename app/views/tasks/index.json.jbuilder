json.array!(@tasks) do |task|
  json.extract! task, :id, :task_name, :project_id
  json.url task_url(task, format: :json)
end

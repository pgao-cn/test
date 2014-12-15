json.array!(@epics) do |epic|
  json.extract! epic, :id, :rpt_date, :epic_key, :effort_tracking, :epic_name, :epic_component, :effort_original, :effort_remaining, :effort_spent, :effort_changed, :epic_reporter, :epic_type, :epic_assignee, :epic_status
  json.url epic_url(epic, format: :json)
end

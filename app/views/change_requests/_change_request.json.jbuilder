json.extract! change_request, :id, :request_no, :project, :requested_by, :department, :telephone, :description, :required_date, :reason, :sign_off, :approval, :created_at, :updated_at
json.url change_request_url(change_request, format: :json)

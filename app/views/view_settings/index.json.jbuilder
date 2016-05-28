json.array!(@view_settings) do |view_setting|
  json.extract! view_setting, :id, :corporation_information, :programs, :operations, :communications, :finances, :general_information, :new_members, :eve_account_information, :user_id
  json.url view_setting_url(view_setting, format: :json)
end

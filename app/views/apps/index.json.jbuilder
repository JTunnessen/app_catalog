json.array!(@apps) do |app|
  json.extract! app, :id, :title, :acronym, :description, :prod_mgr, :prod_owner, :lead_dev, :deploy_date, :user_1, :user_count_1, :user_2, :user_count_2, :user_3, :user_count_3, :user_4, :user_count_4, :user_5, :user_count_5, :user_6, :user_count_6, :user_7, :user_count_7, :user_8, :user_count_8, :responsive, :version, :pro_lang_1, :prog_lang_eol_1, :framework_1, :framework_eol_1, :tech_stack_1, :tech_stack_eol_1, :tech_stack_2, :tech_stack_eol_2, :tech_stack_3, :tech_stack_eol_3, :tech_stack_4, :tech_stack_eol_4, :tech_stack_5, :tech_stack_eol_5, :tech_stack_6, :tech_stack_eol_6, :sys_dep_1, :sys_dep_2, :sys_dep_3, :sys_dep_4, :sys_dep_5, :sys_dep_6, :user_id
  json.url app_url(app, format: :json)
end

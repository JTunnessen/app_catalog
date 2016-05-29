class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :title
      t.string :acronym
      t.text :description
      t.string :prod_mgr
      t.string :prod_owner
      t.string :lead_dev
      t.date :deploy_date
      t.string :link_to_app
      t.string :link_to_repo
      t.string :link_to_backlog
      t.string :user_1
      t.string :user_count_1
      t.string :user_2
      t.string :user_count_2
      t.string :user_3
      t.string :user_count_3
      t.string :user_4
      t.string :user_count_4
      t.string :user_5
      t.string :user_count_5
      t.string :user_6
      t.string :user_count_6
      t.string :user_7
      t.string :user_count_7
      t.string :user_8
      t.string :user_count_8
      t.boolean :responsive
      t.string :version
      t.string :prog_lang_1
      t.string :prog_lang_version
      t.date :prog_lang_eol_1
      t.string :framework_1
      t.string :framework_version
      t.date :framework_eol_1
      t.string :database
      t.string :database_version
      t.date :database_eol
      t.string :web_server
      t.string :web_server_version
      t.date :web_server_eol
      t.string :app_server
      t.string :app_server_version
      t.date :app_server_eol
      t.string :tech_stack_1
      t.date :tech_stack_eol_1
      t.string :tech_stack_2
      t.date :tech_stack_eol_2
      t.string :tech_stack_3
      t.date :tech_stack_eol_3
      t.string :sys_dep_1
      t.string :sys_dep_2
      t.string :sys_dep_3
      t.string :sys_dep_4
      t.string :sys_dep_5
      t.string :sys_dep_6
      t.integer :app_priority

      t.timestamps null: false
    end
  end
end

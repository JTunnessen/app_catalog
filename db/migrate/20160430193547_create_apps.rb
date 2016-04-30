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
      t.date :prog_lang_eol_1
      t.string :framework_1
      t.date :framework_eol_1
      t.string :tech_stack_1
      t.date :tech_stack_eol_1
      t.string :tech_stack_2
      t.date :tech_stack_eol_2
      t.string :tech_stack_3
      t.date :tech_stack_eol_3
      t.string :tech_stack_4
      t.date :tech_stack_eol_4
      t.string :tech_stack_5
      t.date :tech_stack_eol_5
      t.string :tech_stack_6
      t.date :tech_stack_eol_6
      t.string :sys_dep_1
      t.string :sys_dep_2
      t.string :sys_dep_3
      t.string :sys_dep_4
      t.string :sys_dep_5
      t.string :sys_dep_6
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

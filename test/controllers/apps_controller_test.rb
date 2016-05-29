require 'test_helper'

class AppsControllerTest < ActionController::TestCase
  setup do
    @app = apps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app" do
    assert_difference('App.count') do
      post :create, app: { acronym: @app.acronym, deploy_date: @app.deploy_date, description: @app.description, framework_1: @app.framework_1, framework_eol_1: @app.framework_eol_1, lead_dev: @app.lead_dev, pro_lang_1: @app.prog_lang_1, prod_mgr: @app.prod_mgr, prod_owner: @app.prod_owner, prog_lang_eol_1: @app.prog_lang_eol_1, responsive: @app.responsive, sys_dep_1: @app.sys_dep_1, sys_dep_2: @app.sys_dep_2, sys_dep_3: @app.sys_dep_3, sys_dep_4: @app.sys_dep_4, sys_dep_5: @app.sys_dep_5, sys_dep_6: @app.sys_dep_6, tech_stack_1: @app.tech_stack_1, tech_stack_2: @app.tech_stack_2, tech_stack_3: @app.tech_stack_3, app_server: @app.app_server, web_server: @app.web_server, database: @app.database, tech_stack_eol_1: @app.tech_stack_eol_1, tech_stack_eol_2: @app.tech_stack_eol_2, tech_stack_eol_3: @app.tech_stack_eol_3, app_server_eol: @app.app_server_eol, web_server_eol: @app.web_server_eol, database_eol: @app.database_eol, title: @app.title, user_1: @app.user_1, user_2: @app.user_2, user_3: @app.user_3, user_4: @app.user_4, user_5: @app.user_5, user_6: @app.user_6, user_7: @app.user_7, user_8: @app.user_8, user_count_1: @app.user_count_1, user_count_2: @app.user_count_2, user_count_3: @app.user_count_3, user_count_4: @app.user_count_4, user_count_5: @app.user_count_5, user_count_6: @app.user_count_6, user_count_7: @app.user_count_7, user_count_8: @app.user_count_8, user_id: @app.user_id, version: @app.version }
    end

    assert_redirected_to app_path(assigns(:app))
  end

  test "should show app" do
    get :show, id: @app
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app
    assert_response :success
  end

  test "should update app" do
    patch :update, id: @app, app: { acronym: @app.acronym, deploy_date: @app.deploy_date, description: @app.description, framework_1: @app.framework_1, framework_eol_1: @app.framework_eol_1, lead_dev: @app.lead_dev, pro_lang_1: @app.prog_lang_1, prod_mgr: @app.prod_mgr, prod_owner: @app.prod_owner, prog_lang_eol_1: @app.prog_lang_eol_1, responsive: @app.responsive, sys_dep_1: @app.sys_dep_1, sys_dep_2: @app.sys_dep_2, sys_dep_3: @app.sys_dep_3, sys_dep_4: @app.sys_dep_4, sys_dep_5: @app.sys_dep_5, sys_dep_6: @app.sys_dep_6, tech_stack_1: @app.tech_stack_1, tech_stack_2: @app.tech_stack_2, tech_stack_3: @app.tech_stack_3, app_server: @app.app_server, web_server: @app.web_server, database: @app.database, tech_stack_eol_1: @app.tech_stack_eol_1, tech_stack_eol_2: @app.tech_stack_eol_2, tech_stack_eol_3: @app.tech_stack_eol_3, app_server_eol: @app.app_server_eol, web_server_eol: @app.web_server_eol, database_eol: @app.database_eol, title: @app.title, user_1: @app.user_1, user_2: @app.user_2, user_3: @app.user_3, user_4: @app.user_4, user_5: @app.user_5, user_6: @app.user_6, user_7: @app.user_7, user_8: @app.user_8, user_count_1: @app.user_count_1, user_count_2: @app.user_count_2, user_count_3: @app.user_count_3, user_count_4: @app.user_count_4, user_count_5: @app.user_count_5, user_count_6: @app.user_count_6, user_count_7: @app.user_count_7, user_count_8: @app.user_count_8, user_id: @app.user_id, version: @app.version }
    assert_redirected_to app_path(assigns(:app))
  end

  test "should destroy app" do
    assert_difference('App.count', -1) do
      delete :destroy, id: @app
    end

    assert_redirected_to apps_path
  end
end

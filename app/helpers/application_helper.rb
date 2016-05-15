module ApplicationHelper

  def userBase
    @app.user_count_1.delete(',').to_i +
    @app.user_count_2.delete(',').to_i +
    @app.user_count_3.delete(',').to_i +
    @app.user_count_4.delete(',').to_i +
    @app.user_count_5.delete(',').to_i +
    @app.user_count_6.delete(',').to_i
  end


  #$app_user_count = App.fetch(:user_count_1).to_i

# Dashboard Equations -- EQUATION IS WRONG
  total_user_count1 = App.sum(:user_count_1).delete(',').to_i + App.sum(:user_count_2).delete(',').to_i + App.sum(:user_count_3).delete(',').to_i + App.sum(:user_count_4).delete(',').to_i
  total_user_count2 = App.sum(:user_count_5).delete(',').to_i + App.sum(:user_count_6).delete(',').to_i + App.sum(:user_count_7).delete(',').to_i + App.sum(:user_count_8).delete(',').to_i
  $total_user_count = total_user_count1 + total_user_count2

end

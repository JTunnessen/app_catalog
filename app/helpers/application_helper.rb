module ApplicationHelper

  def userBase
    @app.user_count_1.delete(',').to_i +
    @app.user_count_2.delete(',').to_i +
    @app.user_count_3.delete(',').to_i +
    @app.user_count_4.delete(',').to_i +
    @app.user_count_5.delete(',').to_i +
    @app.user_count_6.delete(',').to_i
  end


end

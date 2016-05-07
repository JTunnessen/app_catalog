class App < ActiveRecord::Base

  def self.latest
    App.order(:updated_at).last
  end

end

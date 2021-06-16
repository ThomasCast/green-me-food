class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def delivery
    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "infowindow", locals: { user: user }),
        image_url: helpers.asset_url('carotte.png')
      }
    end
  end
end

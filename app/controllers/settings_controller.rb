class SettingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @settings = Setting.all[0]
  end

  def update
  	Setting.update site_name: params[:site_name]
    Setting.update slider_interval: params[:slider_interval]
    if params[:slider_birthday] == nil
      params[:slider_birthday] = false
    end
    Setting.update slider_birthday: params[:slider_birthday]
    Setting.update slider_event: params[:slider_event]
    Setting.update slider_message: params[:slider_message]
    redirect_to "/settings"
  end
end

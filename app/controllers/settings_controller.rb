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
    Setting.update full_welcome: params[:full_welcome]
    Setting.update slider_birthday: params[:slider_birthday]
    Setting.update slider_event: params[:slider_event]
    Setting.update slider_saint: params[:slider_saint]
    Setting.update slider_menu: params[:slider_menu]
    Setting.update url_menu: params[:url_menu]
    Setting.update slider_message: params[:slider_message]
    redirect_to "/settings"
  end
end

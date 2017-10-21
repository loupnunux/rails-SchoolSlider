class SlideshowsController < ApplicationController
  def index
    @students = Student.all
    @saints = Saint.all
    @events = Event.all.order(:start)
    @settings = Setting.all[0]
    @slides = Slide.all
    @week = ['Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi']
    @month = ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre']
    @day = Time.now.strftime "%Y-%m-%d"
    @slide_number = 1
    if @settings.slider_event == true
      @slide_number += 1
    end
    if @settings.slider_birthday == true
      @slide_number += 1
    end

    event_sort
    check_slide
    check_saint
  end

  def check_saint
    @list_saint = []
    @saints.each do |s|
      if (@day.to_datetime.strftime("%m-%d") == s.day.to_datetime.strftime("%m-%d"))
        @list_saint << s.name
      end
    end
    if @list_saint.any?
      @slide_number += 1
    end
  end

  def check_slide
  	@list_slide = []
  	@slides.each do |s|
      if (@day >= s.start.to_datetime) and (@day <= s.end.to_datetime)
        @list_slide << s.name
        @slide_number += 1
      end
    end
  end

  def event_sort
    @events_date = []
    @events.each do |e|
      if e.day.strftime("%Y%m%d") >= Time.now.strftime("%Y%m%d")
        @events_date << e.day
      end
    end
  end

end
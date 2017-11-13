class SlideshowsController < ApplicationController
  def index
    @students = Student.all
    @saints = Saint.all
    @events = Event.all.order(:start)
    @settings = Setting.all[0]
    @slides = Slide.all
    @biblicals = Biblical.all
    @learns = Learn.all
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
    if @settings.slider_meteo == true
      @slide_number += 1
    end

    event_sort
    check_slide
    check_saint
    if @settings.slider_menu
      @slide_number += 1
      menu
    end
    biblical_list
    learn_list
  end

  def check_saint
    @list_saint = []
    @saints.each do |s|
      if (@day.to_datetime.strftime("%m-%d") == s.day.to_datetime.strftime("%m-%d"))
        @list_saint << s.name
      end
    end
    if @list_saint.any? and @settings.slider_saint
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




  def menu
    @path = Rails.public_path
    if File.exist?("#{@path}/#{@settings.url_menu.split('/').last}")
      date_menu
      if @file_date.to_i <= @monday.to_i
        get_menu
      else
        gen_menu
      end
    else
      get_menu
    end
  end

  def get_menu
    system("rm #{@path}/#{@settings.url_menu.split('/').last}")
    system("wget -P #{@path} #{@settings.url_menu}")
    gen_menu
  end

  def date_menu
    @file_date = File.mtime("#{@path}/#{@settings.url_menu.split('/').last}").strftime("%Y%m%d%H%M%S")
    date = Date.today
    @day = date.strftime("%Y%m%d%H%M%S")
    while @monday.nil? do
      date = date - 1
      # define the monday date
      if date.cwday == 1
        @monday = date.strftime("%Y%m%d%H%M%S")
      end
    end
  end

  def gen_menu
    date_menu
    @file_menu = "#{@file_date}-menu.jpg"
    if File.exist?("#{@path}/#{@file_menu}") == false
      system("rm #{@path}/*-menu.jpg")
      #system("convert -density 600 #{@path}/#{@settings.url_menu.split('/').last} #{@path}/menu.jpg")
      system("convert -density 150 -quality 90 #{@path}/#{@settings.url_menu.split('/').last} #{@path}/#{@file_menu}")
    end
  end


  def biblical_list
    @slide_number += 1
    bibli = @biblicals.to_a
    @biblical = bibli[rand(0..(bibli.length) -1)]
  end

  def learn_list
    @slide_number += 1
    learn = @learns.to_a
    @learn = learn[rand(0..(learn.length) -1)]
  end
end

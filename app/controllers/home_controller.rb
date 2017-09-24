class HomeController < ApplicationController

  def index
    @slash = freespace('/')
    @archi = archi
    @ip = `ifconfig -a | grep 'inet ' | grep -v 127.0.0.1`.split[1]
  end

  def freespace(device=".")
    lines = %x(df -k #{device}).split("\n")
    n = lines.last.split[4].to_i
  end

  def archi
    if File.exist?('/usr/sbin/pacman')
      return 'arch'
    else
      return '???'
    end
  end

end

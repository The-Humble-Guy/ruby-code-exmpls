class ListOfDevicesController < ApplicationController
  require 'parser'
  # require 'page_parse'
  def index
    par = Parser.new.parse
    @devices = Device.all
  end
end

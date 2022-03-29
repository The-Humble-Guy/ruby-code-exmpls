# frozen_string_literal: true

class Lab11Controller < ApplicationController
  before_action :prepare_variables, only: :output_form

  def input_form; end

  def pallindrome?(input)
    input.to_s.split('').eql? input.to_s.split('').reverse
  end

  def calc(value)
    (0..value).to_a.select do |int|
      pallindrome?(int) && pallindrome?(int ** 2)
    end.map { |elem| [].append(elem, elem ** 2) }
  end

  def output_form
    pal = Pallindrome.find_by_input @input
    if pal
      @values = JSON.parse pal.values
    else
      @values = calc(@input)
      Pallindrome.create(input: @input, values: @values.to_json)
    end
    create_xml
  end

  def index
    respond_to do |format|
      records = Pallindrome.all.map { |x| { input: x.input, values: JSON.parse(x.values) } }
      format.xml {render xml: records}
      format.json {render json: records}
      format.any {render inline: "Please specify xml or json format"}
    end
  end

  private

  def prepare_variables
    @input = params[:input].to_i
  end

  def create_xml
    @xml = Pallindrome.all.map { |x| { input: x.input, values: JSON.parse(x.values) } }.to_xml
  end
end

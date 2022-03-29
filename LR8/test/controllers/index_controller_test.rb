# frozen_string_literal: true

require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test 'should get input' do
    get index_input_url
    assert_response :success
  end

  test 'should get output' do
    get index_output_url
    assert_response :success
  end
  test 'should get an error' do
    get index_output_url params: { input: '' }
    p 'Pass test_0'
    assert_equal 'Некорректный ввод', assigns[:error]
  end
  test 'should get result' do
    get index_output_url params: { input_value: '10' }
    p 'Pass test_1'
    res = [[0, 0], [1, 1], [2, 4], [3, 9]]
    assert_equal res, assigns[:result]
  end
  test 'view test' do
    get index_output_url params: { input_value: '10' }
    res = [[0, 0], [1, 1], [2, 4], [3, 9]]
    assert_select('#count') do |elements|
      assert elements.any? { |item| item.text.include? res.count.to_s }
    end
    res.each do |el|
      assert_select('td') do |elements|
        assert elements.any? { |item| item.text.include? el[0].to_s }
        assert elements.any? { |item| item.text.include? el[1].to_s }
      end
    end
  end
end

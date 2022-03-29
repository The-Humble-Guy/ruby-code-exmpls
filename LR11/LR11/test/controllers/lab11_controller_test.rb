# frozen_string_literal: true

require 'test_helper'

class Lab11ControllerTest < ActionDispatch::IntegrationTest
  test 'should get input_form' do
    get lab11_input_form_url
    assert_response :success
  end

  test 'should get output_form' do
    get lab11_output_form_url, params: { input: 100 }
    assert_response :success
    assert_not_nil assigns[:values]
  end

  test 'should_show_different' do
    get lab11_output_form_url, params: { input: 1000 }
    res1 = assigns[:values]
    assert_response :success
    get lab11_output_form_url, params: { input: 10_000 }
    res2 = assigns[:values]
    assert_not_equal res1, res2
  end

  # test 'controller should save results' do
  #   get lab11_output_form_url, params: { input: 1000 }
  #   assert Pallindrome.find_by_input(1000)
  # end
  #
  # test 'controller should save correctly' do
  #   refute Pallindrome.find_by_input(2).nil?
  #   get lab11_output_form_url, params: { input: 2 }
  #   assert Pallindrome.find_by_input(2)
  # end
end

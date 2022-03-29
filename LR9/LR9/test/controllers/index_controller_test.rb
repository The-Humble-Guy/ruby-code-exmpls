require "test_helper"

class IndexControllerTest < ActionDispatch::IntegrationTest
  test 'should show enter page' do
    get index_enter_form_url
    assert_response :success
    assert_template 'index/enter_form'
    assert_select 'form'
  end

  test 'should show table' do
    get index_enter_form_url
    get result_url, params: { number: 3 }
    assert_response :success
    assert_not_nil assigns[:numbers]
    assert_template 'index/_result'
  end

  test 'should make output with selenium' do
    driver = Selenium::WebDriver.for :firefox
    begin
      driver.get 'http://localhost:3000/'
      driver.find_element(id: 'input').send_keys '10', :return
      Selenium::WebDriver::Wait.new(timeout: 10).until { assert driver.find_element(id: 'count').text.include? '4' }
      assert driver.find_element(id: 'res_table')
    ensure
      driver.quit
    end
  end

  def timeout_wait(driver)
    Selenium::WebDriver::Wait.new(timeout: 5).until { driver.find_element(id: 'res_table') }
  end

  test 'should make output2 with selenium' do
    driver = Selenium::WebDriver.for :firefox
    begin
      driver.get 'http://localhost:3000/'
      driver.find_element(id: 'input').send_keys '0', :return
      Selenium::WebDriver::Wait.new(timeout: 10).until { assert driver.find_element(id: 'count').text.include? '1' }
    ensure
      driver.quit
    end
  end
end

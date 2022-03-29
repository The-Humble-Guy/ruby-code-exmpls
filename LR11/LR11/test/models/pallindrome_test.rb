require "test_helper"

class PallindromeTest < ActiveSupport::TestCase
  test 'should not save empty model' do
    assert_not Pallindrome.new.save
  end

  test 'should save correct model' do
    assert Pallindrome.new(input: 2, values: [[0,0], [1,1], [2,4]].to_json).save
  end
  test 'should not save twicely' do
    assert_not Pallindrome.new(input: 0, values: [[0,0]].to_json).save
  end
  test 'should find by input value' do
    Pallindrome.new(input: 0, values: [[0,0]].to_json).save
    assert Pallindrome.find_by_input(0)
  end
  test 'should not find by input value' do
    assert_not Pallindrome.find_by_input(100)
  end

end

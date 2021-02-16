require 'test_helper'

class MobileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "will create +4407123456789" do
   mobile= Mobile.create! number: "+447123456789"
   assert_not_nil(mobile)
  end

  test "will create 447123456789" do
    mobile= Mobile.create! number: "447123456789"
    assert_not_nil(mobile)
  end
  
  test "will create +447123456789" do
    mobile= Mobile.create! number: "+447123456789"
    assert_not_nil(mobile)
  end



end

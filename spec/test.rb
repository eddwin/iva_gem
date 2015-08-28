require 'minitest/autorun'
require './lib/iva_gem/iva_gem.rb'

#Test
calendar = IvaSearch::Tax.getDates()

describe IvaSearch do

  describe 'get data' do
    it 'has the right number of dates' do
      calendar.size.must_equal 2
    end

    it 'should not return empty dates' do
      calendar.wont_be_nil
    end
  end
end

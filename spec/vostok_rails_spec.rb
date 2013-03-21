require 'spec_helper'

describe 'vostok/rails' do
  it 'should return version' do
    Vostok::Rails::VERSION.should_not be_nil
  end

end
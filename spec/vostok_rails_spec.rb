require 'spec_helper'

describe 'vostok/rails' do
  it 'should return version' do
    Vostok::Rails::VERSION.should_not be_nil
  end

  it 'should extend any ActiveRecord models with import class method' do
    class MyModel < ActiveRecord::Base
    end

    ->{MyModel.send(:import)}.should_not raise_error NoMethodError
  end
end
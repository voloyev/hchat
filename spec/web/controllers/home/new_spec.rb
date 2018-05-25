require_relative '../../../spec_helper'

describe Web::Controllers::Home::New do
  let(:action) { Web::Controllers::Home::New.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end

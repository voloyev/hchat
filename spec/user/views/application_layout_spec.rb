require "spec_helper"

describe User::Views::ApplicationLayout do
  let(:layout)   { User::Views::ApplicationLayout.new(template, {}) }
  let(:rendered) { layout.render }
  let(:template) { Hanami::View::Template.new('apps/user/templates/application.html.erb') }

  it 'contains application name' do
    rendered.must_include('User')
  end
end

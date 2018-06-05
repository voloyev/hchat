require "spec_helper"

describe Room::Views::ApplicationLayout do
  let(:layout)   { Room::Views::ApplicationLayout.new(template, {}) }
  let(:rendered) { layout.render }
  let(:template) { Hanami::View::Template.new('apps/room/templates/application.html.erb') }

  it 'contains application name' do
    rendered.must_include('Room')
  end
end

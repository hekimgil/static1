require 'spec_helper'

describe 'preview/index.html.haml' do

  it 'check for some css' do
    render
    rendered.should have_css('#page')
    rendered.should have_css('.main-box')
  end
end
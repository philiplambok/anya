require 'application_system_test_case'

class RootsTest < ApplicationSystemTestCase
  test 'visiting the root path' do
    visit root_path

    assert_text 'Webhook information'
  end
end

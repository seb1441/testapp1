require "application_system_test_case"

class MessagesTest < ApplicationSystemTestCase

  test "visiting the index" do
    visit messages_path

    assert_selector "h1", text: "Messages"
  end

  test "creating a message" do
    visit messages_path

    click_on "New Message"

    fill_in "Title", with: "Creating a message"
    fill_in "Text", with: "Created this message successfully!"

    click_on "Create Message"

    assert_selector('tbody tr:last-child td.text', text: 'Created this message successfully!')
  end

  test "creating another message" do
    visit messages_path

    click_on "New Message"

    fill_in "Title", with: "Creating another message"
    fill_in "Text", with: "Created this other message successfully!"

    click_on "Create Message"

    assert_selector('tbody tr:last-child td.text', text: 'Created this other message successfully!')
  end
end

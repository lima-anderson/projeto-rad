require "application_system_test_case"

class RemindersTest < ApplicationSystemTestCase
  setup do
    @reminder = reminders(:one)
  end

  test "visiting the index" do
    visit reminders_url
    assert_selector "h1", text: "Reminders"
  end

  test "should create reminder" do
    visit reminders_url
    click_on "New reminder"

    fill_in "Data", with: @reminder.data
    fill_in "Descricao", with: @reminder.descricao
    fill_in "Hora", with: @reminder.hora
    fill_in "Prioridade", with: @reminder.prioridade
    check "Status" if @reminder.status
    fill_in "Tag", with: @reminder.tag_id
    fill_in "Titulo", with: @reminder.titulo
    click_on "Create Reminder"

    assert_text "Reminder was successfully created"
    click_on "Back"
  end

  test "should update Reminder" do
    visit reminder_url(@reminder)
    click_on "Edit this reminder", match: :first

    fill_in "Data", with: @reminder.data
    fill_in "Descricao", with: @reminder.descricao
    fill_in "Hora", with: @reminder.hora
    fill_in "Prioridade", with: @reminder.prioridade
    check "Status" if @reminder.status
    fill_in "Tag", with: @reminder.tag_id
    fill_in "Titulo", with: @reminder.titulo
    click_on "Update Reminder"

    assert_text "Reminder was successfully updated"
    click_on "Back"
  end

  test "should destroy Reminder" do
    visit reminder_url(@reminder)
    click_on "Destroy this reminder", match: :first

    assert_text "Reminder was successfully destroyed"
  end
end

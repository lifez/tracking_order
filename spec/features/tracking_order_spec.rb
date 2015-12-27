feature "Customer search order" do
  scenario "and sees results" do
    order_id = 1
    start_date = 5
    end_date = 10
    time = Time.now()
    user = create(:user, start: start_date, end: end_date)
    order = create(:orders, order_id: order_id, user_id: user.id)

    visit root_path
    fill_in :q, with: order_id
    click_button "Go"
    
    start_date = (time + start_date.days).strftime("%d %B %Y")
    end_date = (time + end_date.days).strftime("%d %B %Y")

    expect(page).to have_content("#1")
    expect(page).to have_content(start_date)
    expect(page).to have_content(end_date)
  end
end

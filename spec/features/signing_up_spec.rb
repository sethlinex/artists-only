require "rails_helper"

RSpec.feature "Users can sign up" do
    scenario "when providing valid details" do
        visit "/"
        click_link "Sign Up"
        fill_in "Email", with: "text@example.com"
        fill_in "Username", with: "Username"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_button "Sign Up"
        expect(page).to have_content("You have signed up successfully.")
    end
end
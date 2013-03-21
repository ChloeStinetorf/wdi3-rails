require 'spec_helper'

describe 'Albums' do

  describe 'GET /' do
    it 'displays add new album link' do
      visit root_path
      page.should have_link('New Album')
    end
  end

  describe 'GET /albums/new' do
    it 'displays the new album form', :js => true do
      visit root_path
      click_link('New Album')
      page.should have_button('Create Album')
    end
  end

  describe 'POST /albums' do
    it 'creates a new album', :js => true do
      visit root_path

      click_link('New Album')
      fill_in('Name', :with => 'spring vacation')
      click_button('Create Album')

      click_link('New Album')
      fill_in('Name', :with => 'winter vacation')
      click_button('Create Album')

      click_link('New Album')
      fill_in('Name', :with => 'summer vacation')
      click_button('Create Album')

      page.should have_css('table tr:nth-child(2) td:nth-child(1)', :text => 'spring vacation')
      page.should have_css('table tr:nth-child(2) td:nth-child(2)', :text => '0')
      page.should have_css('table tr:nth-child(3) td:nth-child(1)', :text => 'summer vacation')
      page.should have_css('table tr:nth-child(3) td:nth-child(2)', :text => '0')
      page.should have_css('table tr:nth-child(4) td:nth-child(1)', :text => 'winter vacation')
      page.should have_css('table tr:nth-child(4) td:nth-child(2)', :text => '0')

      visit root_path

      page.should have_css('table tr:nth-child(2) td:nth-child(1)', :text => 'spring vacation')
      page.should have_css('table tr:nth-child(2) td:nth-child(2)', :text => '0')
      page.should have_css('table tr:nth-child(3) td:nth-child(1)', :text => 'summer vacation')
      page.should have_css('table tr:nth-child(3) td:nth-child(2)', :text => '0')
      page.should have_css('table tr:nth-child(4) td:nth-child(1)', :text => 'winter vacation')
      page.should have_css('table tr:nth-child(4) td:nth-child(2)', :text => '0')
    end
  end

  describe 'JS clear_form' do
    it 'removes the new album form', :js => true do
      visit root_path
      click_link('New Album')
      click_link('Cancel')
      page.should_not have_button('Create Album')
    end
  end

   describe 'GET /albums/3' do
    it 'displays the album show page', :js => true do
      visit root_path
      click_link('New Album')
      fill_in('Name', :with => 'spring vacation')
      click_button('Create Album')
      click_link('spring vacation')
      current_path.should eq '/albums/1'
    end

    it 'displays the new photo form', :js => true do
      album = FactoryGirl.create(:album)
      visit album_path(album)
      current_path.should eq '/albums/1'
      page.should have_link('New Photo')
    end
  end


end










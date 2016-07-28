module Pages
  class Application
    def initialize
      @pages = {}
    end

    def edit_contact_details_page
      @pages[:edit_contact_details_page] ||= Pages::EditContactDetailsPage.new
    end
  end
end

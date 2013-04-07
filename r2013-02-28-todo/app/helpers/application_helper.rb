module ApplicationHelper
  def smartnav

    if @auth.present?
      link_to(@auth.email, login_path, :method => :delete)
    end

  end
end



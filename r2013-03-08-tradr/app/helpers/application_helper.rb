module ApplicationHelper
  def login_nav
    if @auth.present?
      link_to(@auth.email, login_path, :method => :delete, :class => 'button alert')
      link_to('Stocks', stocks_path, :class => 'button info')
    else
      link_to('Login', login_path, :class => 'button success')
    end
  end
end



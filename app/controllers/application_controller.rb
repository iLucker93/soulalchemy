class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

# Проверка на контроллер, если devise, то вызывает метод configure_permitted_parameters для настройки разрешенных параметров
  before_filter :configure_permitted_parameters, if: :devise_controller?
    
protected

# Параметры, которые принимает гем Devise через пользовательские формы на сайте
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:sign_up) << :email
    devise_parameter_sanitizer.for(:sign_in) << :username
  end

end
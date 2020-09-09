class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
     def configure_permitted_parameters
        permit_parameters_for_sign_up = [:name, :email,:password, :password_confirmation, :birth, :gender]
        permit_parameters_for_update = [:name,:password, :password_confirmation, :birth, :gender]
        devise_parameter_sanitizer.permit :sign_up, keys: permit_parameters_for_sign_up
        devise_parameter_sanitizer.permit :account_update, keys: permit_parameters_for_update
    end
end
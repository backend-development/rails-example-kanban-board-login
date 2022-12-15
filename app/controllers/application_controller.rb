# frozen_string_literal: true

class ApplicationController < ActionController::Base

  def current_user
    if session[:user_id]
      @current_user ||= User.where(id: session[:user_id]).first
    end
  end
  helper_method :current_user
end

# I'm a top-level class documentation comment
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
end

class StorageController < ApplicationController

  def cookie_storage
    Rails.logger.error("COOKIES: #{cookies.inspect}")

    if cookies[:by_server] == 'javascript'
      cookies[:by_server] = 'jquery'
    else
      cookies[:by_server] = 'javascript'
    end

    cookies[:only] = { :value => "not editing in javascript", :http_only => true }
  end

  def local_storage
    # Si può solo impostare lato cliente tramite JavaScript.
  end

  def session_storage
    # Si può solo impostare lato cliente tramite JavaScript.
  end

  def indexed_db

  end

end

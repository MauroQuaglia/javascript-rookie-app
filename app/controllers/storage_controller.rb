class StorageController < ApplicationController

  def cookie_storage
    Rails.logger.error("COOKIES: #{cookies.inspect}")

    if cookies[:by_server] == 'javascript'
      cookies[:by_server] = 'jquery'
    else
      cookies[:by_server] = 'javascript'
    end
  end

end

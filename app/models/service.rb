class Service < ApplicationRecord
  belongs_to :user

  %w{ facebook twitter github google_oauth2}.each do |provider|
    scope provider, ->{ where(provider: provider) }
  end

  def client
    send("#{provider}_client")
  end

  def expired?
    expires_at? && expires_at <= Time.zone.now
  end

  def access_token
    send("#{provider}_refresh_token!", super) if expired?
    super
  end


  def twitter_client
    Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.secrets.twitter_app_id
      config.consumer_secret     = Rails.application.secrets.twitter_app_secret
      config.access_token        = access_token
      config.access_token_secret = access_token_secret
    end
  end

  def twitter_refresh_token!(token); end

  def google_oauth2_refresh_token!(client)
    params = {
      refresh_token: refresh_token,
      client_id: Rails.application.credentials[Rails.env.to_sym][:google_app_id],
      client_secret: Rails.application.credentials[Rails.env.to_sym][:google_app_secret],
      grant_type: 'refresh_token'
    }

    url = URI("https://accounts.google.com/o/oauth2/token")
    response = Net::HTTP.post_form(url, params)
    data = JSON.parse(response.body)

    update(access_token: data['access_token'], expires_at: Time.now + data['expires_in'])
  end
end

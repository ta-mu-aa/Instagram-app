class InstagramController < ApplicationController
    def home
        instagram_business_id = ENV["INSTAGRAM_BUSINESS_ID"]
        access_token = ENV["ACCESS_TOKEN"]
        target_user = ENV["TARGET_USER"]

# 自分のアカウントのデータを取得
        query = "name,media{caption,like_count,media_url,permalink,timestamp,username}&access_token=#{access_token}"

        instagram_api_url = 'https://graph.facebook.com/v12.0/'
        # @target_url = instagram_api_url+instagram_business_id+"?fields="+query+"&access_token="+access_token
        @target_url = "#{instagram_api_url}#{instagram_business_id}+?fields=+#{query}+&access_token=#{access_token}"

        # ch = curl_init()
        # curl_setopt(ch, CURLOPT_URL, target_url)
        # curl_setopt(ch, CURLOPT_RETURNTRANSFER, true)

        # instagram_data = curl_exec(ch)
        # curl_close(ch)

        # @instagram_data;
    end
end

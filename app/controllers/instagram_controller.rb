class InstagramController < ApplicationController
    require 'httpclient'
    require 'json'

    def home

    end

    def post_list 
        @select_id = params[:select_id].to_i
        @selectID = 1

        instagram_business_id = ENV["INSTAGRAM_BUSINESS_ID"]
        access_token = ENV["ACCESS_TOKEN"]
        target_user = ENV["TARGET_USER"]
        # 自分のアカウントのデータを取得
        query = "name,media{caption,like_count,media_url,permalink,timestamp,username}&access_token=#{access_token}"
        instagram_api_url = 'https://graph.facebook.com/v12.0/'
        target_url = "#{instagram_api_url}#{instagram_business_id}?fields=#{query}&access_token=#{access_token}"

        # 新しいインスタンスを作成
        client = HTTPClient.new
        #APIリクエスト
        res = client.get(target_url)
        #ハッシュ化して返す
        result_json =  JSON.parse(res.body)
        @array_data = result_json["media"]["data"] 
    end
end

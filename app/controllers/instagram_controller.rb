class InstagramController < ApplicationController
    def home
        instagram_business_id = '17841448718565047'
        access_token = 'EAADVEC1yFhgBAGZC7HoW7v5fKTZAynqHPii0vZAMCCZA0z2ZBp7HFMziOqQelxgnh7QnAO3L5uwRCU3jSs2OHx1mZB9z8sU8ipYVNqflYwxAVJJOSOgciJ96x7VPCQfktMQTEeaGHO0ze6op3aP67PvqHHSF25GdcpQRgzZAzgvZCVTAUuSpivwp'
        target_user = 'ehime_log'

# 自分のアカウントのデータを取得
        query = 'name,media{caption,like_count,media_url,permalink,timestamp,username}&access_token='+access_token

        instagram_api_url = 'https://graph.facebook.com/v12.0/'
        target_url = instagram_api_url+instagram_business_id+"?fields="+query+"&access_token="+access_token

        # ch = curl_init()
        # curl_setopt(ch, CURLOPT_URL, target_url)
        # curl_setopt(ch, CURLOPT_RETURNTRANSFER, true)

        # instagram_data = curl_exec(ch)
        # curl_close(ch)

        # @instagram_data;
    end
end

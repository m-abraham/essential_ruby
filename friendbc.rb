require 'open-uri'
require 'json'



# You can ignore the next two lines; it's a hack to prevent
#   errors on certain machines
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

url = "https://graph.facebook.com/v2.3/me/home?access_token=CAACEdEose0cBADbhCma2ZArrNjx9sJAJKz6WPWZBsRDUIos8pkLIZB2pX24iKvIiJgC5HsRCrtn8ZC4Q2ymxMMsTEWkZBoKXKDZAvKblPKZBlPvpmjLagR0WS5sEbBKcHZAsr4tayDQ2MneoXElpsGAoWxYn11NPviZAaAVJEz8t3QresmF98dVo8dB3ls10ZBvZCCS5GseNYdZBh7V1DNmZCNeBn63bzERvNLSoZD"
result= JSON.parse(open(url).read)

posts = results["data"]

posts.each do |the_post|
	if the_post["type"]=="video"
		puts the_post["from"]["name"]
		puts the_post["message"]
    end
end

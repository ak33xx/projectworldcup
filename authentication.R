#make sure you have installed it first by: 
#install.packages("twitteR") 
#and
#install.packages("ROAuth")
library(ROAuth)
library(twitteR)

consumer_key <-  "vHdpaAJ9KHzbVqJJ3uT1KgucZ"
#"AKJsxNqX2D8uTo9orgjRirvWL"
consumer_secret <- "tdKJCiA7dI35utjxNVFXCiDiwsti2xgcG6vdlAyXDpzAXJWYdd"
#"QOKk0ctHhbXNQ5QaipqofrZQzWM92mfkcoP60xe7HJzjSUCz6F"
access_token <- "1003910490035085312-gYyNpCh5Uzg8jaYaXLikUgpwjvGEvb"
#"2617540074-5l6gGJhCP8iw9DS7sVD9qsFaUGfWGO9fqlHt5Wg"
access_secret <- "r78b4v6u7zfEKDQiSCkuQnYZwE0s1MBNA9Tdr8Drxn3yH"
#"VVMfNIzgPEUmCk5QyIWr5A4ZSC2Lxy7CERoUtWs4jAe0l"

download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile="cacert.pem") #downloads the certificate

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

cred <- OAuthFactory$new(consumerKey=consumer_key, 
	consumerSecret=consumer_secret,
	requestURL='https://api.twitter.com/oauth/request_token',
	accessURL='https://api.twitter.com/oauth/access_token',
	authURL='https://api.twitter.com/oauth/authorize')

cred$handshake(cainfo="cacert.pem")
#After this you are redirected to a URL automatically, click on Authorize App and enter the PIN generated there
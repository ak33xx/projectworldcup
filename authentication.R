library(ROAuth)
library(twitteR)
library(openssl)
library(httpuv)

consumer_key <-"G8L0sYaueAE7H6QBBbrdNeCFF"
consumer_secret <- "NHaMXMFMR8LNLkqmKw3fSDXy9ZtDJ2WsgmNfi98haLQbrdB1Fm"
access_token<-"1003910490035085312-NGwqZ0mUuexXnd4vnUFo709jXFEcpi"
access_secret <- "zdz9m9Olfxp7qVt4dYi1X4kp4uzuvcp7LWIks0fFttuyr"

setup_twitter_oauth(consumer_key, consumer_secret, access_token,  access_secret)
cred <- OAuthFactory$new(consumerKey='G8L0sYaueAE7H6QBBbrdNeCFF', consumerSecret='NHaMXMFMR8LNLkqmKw3fSDXy9ZtDJ2WsgmNfi98haLQbrdB1Fm',requestURL='https://api.twitter.com/oauth/request_token',accessURL='https://api.twitter.com/oauth/access_token',authURL='https://api.twitter.com/oauth/authorize')
cred$handshake(cainfo="cacert.pem")

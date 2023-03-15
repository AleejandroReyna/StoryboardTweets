//
//  MainEndpoints.swift
//  StoryboardTweets
//
//  Created by Alejandro Reyna on 14/03/23.
//

struct MainEndpoints {
    static let domain = "https://platzi-tweets-backend.herokuapp.com/api/v1"
    static let login = MainEndpoints.domain + "/auth"
    static let signup = MainEndpoints.domain + "/register"
    static let getTweets = MainEndpoints.domain + "/posts"
    static let createTweet = MainEndpoints.domain + "/posts"
    static let deleteTweet = MainEndpoints.domain + "/posts/"
}

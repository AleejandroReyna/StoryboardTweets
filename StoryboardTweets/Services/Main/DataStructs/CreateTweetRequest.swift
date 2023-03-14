//
//  createTweetRequest.swift
//  StoryboardTweets
//
//  Created by Alejandro Reyna on 13/03/23.
//

struct CreateTweetRequest : Codable {
    let text : String
    let imageUrl : String?
    let videoUrl : String?
    let location : Location?
}

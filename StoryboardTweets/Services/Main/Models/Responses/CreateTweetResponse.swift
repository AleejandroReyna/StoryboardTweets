//
//  CreateTweetResponse.swift
//  StoryboardTweets
//
//  Created by Alejandro Reyna on 13/03/23.
//

struct CreateTweetResponse : Codable {
    let id : String
    let author : User
    let text : String
    let imageUrl : String?
    let videoUrl : String?
    let location : Location?
    let hasVideo : Bool
    let hasImage : Bool
    let hasLocation : Bool
    let createdAt : String
}

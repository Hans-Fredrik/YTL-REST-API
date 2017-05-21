//
//  VideoController.swift
//  YoutubeLite-REST-API
//
//  Created by Hans Fredrik Fuglerud Brastad on 5/5/17.
//
//

import Foundation
import Vapor
import HTTP

final class VideoController {
    
    func getAll(_ request: Request) throws -> ResponseRepresentable {
        let videos = JsonFileReader.readJson(fileName: "videos.json")
        
        return videos
    }
    
    
    func getTrending(_ request: Request) throws -> ResponseRepresentable {
        let videos = JsonFileReader.readJson(fileName: "trending.json")
        
        return videos
    }
    
    
    func getSubscribed(_ request: Request) throws -> ResponseRepresentable {
        let videos = JsonFileReader.readJson(fileName: "subscriptions.json")
        
        return videos
    }
    
}

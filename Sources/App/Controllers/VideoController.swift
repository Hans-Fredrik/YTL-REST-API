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

class VideoController {
    
    func getAllVideos(_ request: Request) throws -> ResponseRepresentable {
        let videos = JsonFileReader.readJson(fileName: "Videos.json")
        
        return videos
    }
    
}

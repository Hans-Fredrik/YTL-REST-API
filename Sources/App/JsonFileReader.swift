//
//  JsonFileReader.swift
//  YoutubeLite-REST-API
//
//  Created by Hans Fredrik Fuglerud Brastad on 5/5/17.
//
//

import Foundation

final class JsonFileReader  {
    
    class func readJson(fileName: String) -> String {
        do{
            let fileUrl = URL(fileURLWithPath: "\(drop.resourcesDir)/Data/\(fileName)")
            let data = try Data(contentsOf: fileUrl)
            
            if let JSONString = String(data: data, encoding: String.Encoding.utf8) {
                return JSONString
            }else{
                return "Data could not be parsed"
            }
            
        }catch {
            return error.localizedDescription
        }
    }
    
}

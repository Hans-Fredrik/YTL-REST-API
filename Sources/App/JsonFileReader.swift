//
//  JsonFileReader.swift
//  YoutubeLite-REST-API
//
//  Created by Hans Fredrik Fuglerud Brastad on 5/5/17.
//
//

import Foundation


class JsonFileReader  {
    
    class func readJson(fileName: String) -> String {
        do{
            let fileUrl = URL(fileURLWithPath: "\(drop.resourcesDir)/Data/\(fileName)")
            let data = try Data(contentsOf: fileUrl)
            
            //Do this for print data only otherwise skip
            if let JSONString = String(data: data, encoding: String.Encoding.utf8) {
                print("Here is JSONSTRING : \(JSONString)")
                return JSONString
            }else{
                return "Data could not be parsed"
            }
            
        }catch {
            return error.localizedDescription
        }
    }
    
}

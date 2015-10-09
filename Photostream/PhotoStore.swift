//
//  PhotoStore.swift
//  Photostream
//
//  Created by Bryant Detwiller on 10/9/15.
//  Copyright © 2015 Bryant Detwiller. All rights reserved.
//

import Foundation

class PhotoStore {
    let session: NSURLSession = {
        let config = NSURLSessionConfiguration.defaultSessionConfiguration()
        return NSURLSession(configuration: config)
    }()
    
    func fetchRecentPhotos() {
        let url = FlickrAPI.recentPhotosURL()
        let request = NSURLRequest(URL: url)
        let task = session.dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
            
            if let jsonData = data {
                if let jsonString = NSString(data: jsonData, encoding: NSUTF8StringEncoding) {
                    print("\(jsonString)")
                }
                else if let requestError = error {
                    print("Error fetching recent photos: \(requestError)")
                } else {
                    print("Unexpected error with the request")
                }
            }
        })
        task.resume()
    }
}
//
//  APIService.swift
//  PodCasts
//
//  Created by Anna Guo on 4/29/19.
//  Copyright © 2019 Anna Guo. All rights reserved.
//

import Foundation
import Alamofire

class APIService {
    let baseUrl = "https://itunes.apple.com/search"
    
    static let shared = APIService()
    
    func getPodcasts(searchText: String, completionHandler: @escaping ([Podcast]) -> () ) {
        
        let parameters = ["term": searchText, "media": "podcast"]
        
        Alamofire.request(baseUrl, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: nil).responseData { (dataResponse) in
            
            if let err = dataResponse.error {
                print("Failed to contact yahoo", err)
                return
            }
            
            guard let data = dataResponse.data else { return }
            do {
                let searchResult = try JSONDecoder().decode(SearchResults.self, from: data)
                completionHandler(searchResult.results)

            } catch let decodeErr {
                print("Failed to decode:", decodeErr)

            }
            
        }
    }
    
    struct SearchResults: Decodable {
        let resultCount: Int
        let results: [Podcast]
    }
    
}

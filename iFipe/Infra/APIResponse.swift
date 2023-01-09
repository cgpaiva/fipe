//
//  APIResponse.swift
//  iFipe
//
//  Created by Gabriel on 07/01/23.
//

import Foundation
import Alamofire

class APIResponse {
    let data: Any
    
    init(data: Any) {
        self.data = data
    }
}

class APIError {
    let error: AFError
    
    init(error: AFError) {
        self.error = error
    }
}

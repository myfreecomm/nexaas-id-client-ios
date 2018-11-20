//
//  Core.swift
//  nexaasId
//
//  Created by Rodrigo Andrade on 30/10/18.
//  Copyright © 2018 Rodrigo Andrade. All rights reserved.
//

import Alamofire
import CodableAlamofire
import Foundation

class Core: NSObject {
    
    
//    class func getUser(andCompletion completion: @escaping  (_ error: NSError?) -> ()) {
//        
//        let url = Url.getUser()
//        
//        let sessionManager = ServicesUtils.baseRequestManager()
//        let request = sessionManager?.requestSerializer.request(withMethod: "GET", urlString: url, parameters: nil, error: nil)
//        
//        let task = sessionManager?.dataTask(with: request! as URLRequest) { urlResponse, responseObject, error in
//            if let _ = error {
//                let returnError = ServicesUtils.rexpenseHandleError(with: urlResponse, andRequest: request! as URLRequest, andResult: responseObject)
//                completion(returnError! as NSError)
//                return
//            }
//            
//            guard let userDict = responseObject as? [String: AnyObject] else {
//                let errorMessage = NSLocalizedString("error: \(String(describing: error?.localizedDescription))", comment: "")
//                let error = NSError(domain: "br.com.myfreecomm.rexpense", code: -1, userInfo: [NSLocalizedDescriptionKey : errorMessage])
//                completion(error)
//                return
//            }
//            
//            let moc = NSManagedObjectContext.mr_context(withParent: NSManagedObjectContext.mr_default())
//            moc.perform {
//                User.createUser(with: userDict, in: moc)
//                
//                moc.mr_saveToPersistentStoreAndWait()
//                DispatchQueue.main.async() {
//                    completion(nil)
//                }
//            }
//        }
//        task?.resume()
//    }
//
    
    
    static func renewToken(refreshToken: String,completion: @escaping (_ error: Int?, OAuthResponse?) -> ()) {
        let url = Url.signin()
        let params = ["client_id": Authentication.CLIENT_ID, "client_secret": Authentication.CLIENT_SECRET, "redirect_uri": "com.nexaasId://callback/login", "grant_type": "refresh_token", "refresh_token": Singleton.refreshToken() ?? ""] as [String:Any]
        
        
        Alamofire.request(url, method: .post, parameters: params).responseDecodableObject(decoder: JSONDecoder()) { (response: DataResponse<OAuthResponse>) in
            
            let repo = response.result.value
            let error = response.response?.statusCode
            
            
            completion(error,repo)
            
        }
    }
    
}


//
//  ActivitiesManager.swift
//  Not Bored
//
//  Created by Alvaro Hernan Orellana Villarroel on 03/11/2021.
//
import Foundation
import Alamofire

class ActivitiesManager {
    
    static let shared = ActivitiesManager()
    private init() {}
    
    let baseURL : String = "https://www.boredapi.com/api/activity"
    var randomActivity: Activity?

    
    func getActivity(type: String, completion: @escaping (Activity?) -> Void) {
        let url = "\(baseURL)?type=\(type)"
        
        AF.request(url).response { response in
            switch response.result {
            case .success(let data) :
                do{
                    if let data = data {
                        let activity = try JSONDecoder().decode(Activity.self, from: data)
                        completion(activity)
                    }
                } catch{
                    print(error.localizedDescription)
                    completion(nil)
                }
            case .failure(let error) :
                print(error.localizedDescription)
                completion(nil)
            }
        }
        
    }
    
    
    
    func getRandomActivity(completion: @escaping (Activity?) -> Void) {
//        AF.request(baseURL).response { [weak self] response in
//            switch response.result {
//
//            case .success(let data):
//                if let safeData = data {
//                    self?.randomActivity = try? JSONDecoder().decode(Activity.self, from: safeData)
//                }
//
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
//
//        return randomActivity
//
      
        
        let request = AF.request(baseURL)
        request.response { response in
            switch response.result {
            case .success(let data) :
                do{
                    if let data = data {
                        let activity = try JSONDecoder().decode(Activity.self, from: data)
                        completion(activity)
                    }
                } catch{
                    print(error.localizedDescription)
                    completion(nil)
                }
            case .failure(let error) :
                print(error.localizedDescription)
                completion(nil)
            }
        }
        
       
        
        
        
        
        
        
    }
    
}


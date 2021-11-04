//
//  ActivitiesManager.swift
//  Not Bored
//
//  Created by Alvaro Hernan Orellana Villarroel on 03/11/2021.
//

import Foundation
import Alamofire

struct ActivitiesManager {
    static let shared = ActivitiesManager()
    private init() {}
    
    func getActivities(completion: @escaping ([Activity]) -> Void, parameters : [String:Any] = [:]) {
        let url : String = "https://www.boredapi.com/api/activity"
        //Si el array de parameters NO está vacio, debe completar el URL base
        //con los parametros correspondientes
        if !parameters.isEmpty{
        }
        
        let request = AF.request(url)
        request.response { response in
            switch response.result {
            case .success(let data) :
                do{
                    if let data = data {
                        let activity = try JSONDecoder().decode(Activity.self, from: data)
                        completion([activity])
                    }
                } catch{
                    print(error.localizedDescription)
                    completion([])
                }
            case .failure(let error) :
                print(error.localizedDescription)
                completion([])
            }
        }
    }
    
}

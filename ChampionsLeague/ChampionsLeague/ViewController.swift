//
//  ViewController.swift
//  ChampionsLeague
//
//  Created by Nourallah on 28.03.18.
//  Copyright © 2018 Nourallah. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire


class ViewController: UIViewController {

    //Constants URL + API
    //-----------------------//
    let champions_URL = ""
    let APP_api = ""
    
    @IBOutlet var matchInformation: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Write the getChampions Data
    //----------------------------------//
    func getChampionsData(url: String, parameters: [String: String]) {
        Alamofire.request(url, method: .get, parameters: parameters).responseJSON {
        response in
        if response.result.isSuccess {
            print("Success to get the data")
            
            let championsJSON : JSON = JSON(response.result.value!)
            //self.updateChampionsData(JSON: championsJSON)  //we need create func for updateChampionsData but we need first the api because we can't complete coding without api
        }
    }
    }
   


}


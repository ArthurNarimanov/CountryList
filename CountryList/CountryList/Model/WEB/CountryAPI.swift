//
//  CountryAPI.swift
//  CountryList
//
//  Created by Arthur Narimanov on 12/12/2018.
//  Copyright © 2018 Arthur Narimanov. All rights reserved.
//

import Foundation
class CountryAPI {
	func downloadJSON()  {
		if let url = URL(string: "https://rawgit.com/NikitaAsabin/799e4502c9fc3e0ea7af439b2dfd88fa/raw/7f5c6c66358501f72fada21e04d75f64474a7888/page1.json") {
			
			let sesseon = URLSession.shared
			sesseon.dataTask(with: url) { (data, response, error) in
				guard let 	response = response as? HTTPURLResponse,
					response.statusCode == 200 else { return }
				
				guard let data = data else { return }
				do {
					//let decoder = JSONDecoder()
					let json = try JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
						
					
					print("json: ", json)
					
				} catch {
					print("ERROR: ", error)
				}
			}.resume()
		}
	}
}

//
//  CountryModel.swift
//  CountryList
//
//  Created by Arthur Narimanov on 12/12/2018.
//  Copyright © 2018 Arthur Narimanov. All rights reserved.
//

import Foundation
struct CountryModel: Decodable {
	let next: String?
	let countries: Countries
}
struct Next: Decodable {
	let next: String?
}

struct Countries: Decodable {
	
	let name: String
	let continent: String
	let capital: String
	let population: Int
	let description_small: String?
	let description: String
	let image: String?
	let country_info: CountryInfo
	
}

struct CountryInfo: Decodable {
	
	let images: [String]?
	let flag: String

}

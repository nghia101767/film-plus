/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Data : Codable {
	let id : Int?
	let title : String?
	let image : String?
	let link : String?
	let description : String?
	let category : String?
	let actor : String?
	let director : String?
	let manufacturer : String?
	let duration : String?
	let year : String?
	let created_at : String?
	let updated_at : String?
	let views : Int?
	let type : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case title = "title"
		case image = "image"
		case link = "link"
		case description = "description"
		case category = "category"
		case actor = "actor"
		case director = "director"
		case manufacturer = "manufacturer"
		case duration = "duration"
		case year = "year"
		case created_at = "created_at"
		case updated_at = "updated_at"
		case views = "views"
		case type = "type"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		image = try values.decodeIfPresent(String.self, forKey: .image)
		link = try values.decodeIfPresent(String.self, forKey: .link)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		category = try values.decodeIfPresent(String.self, forKey: .category)
		actor = try values.decodeIfPresent(String.self, forKey: .actor)
		director = try values.decodeIfPresent(String.self, forKey: .director)
		manufacturer = try values.decodeIfPresent(String.self, forKey: .manufacturer)
		duration = try values.decodeIfPresent(String.self, forKey: .duration)
		year = try values.decodeIfPresent(String.self, forKey: .year)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
		views = try values.decodeIfPresent(Int.self, forKey: .views)
		type = try values.decodeIfPresent(String.self, forKey: .type)
	}

}
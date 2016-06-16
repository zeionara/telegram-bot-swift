// Telegram Bot SDK for Swift (unofficial).
// (c) 2015 - 2016 Andrey Fidrya. MIT license. See LICENSE for more information.

import Foundation
import SwiftyJSON

/// Represents a Telegram user or bot.
/// - SeeAlso: <https://core.telegram.org/bots/api#user>
public struct User: JsonObject {
	/// Original JSON for fields not yet added to Swift structures
	public var json: JSON

    /// Unique identifier for this user or bot.
	public var id: Int64 {
		get { return json["id"].int64Value }
		set { json["id"].int64Value = newValue }
	}
		
    /// User‘s or bot’s first name.
	public var first_name: String {
		get { return json["first_name"].stringValue }
		set { json["first_name"].stringValue = newValue }
	}
		
    /// *Optional.* User‘s or bot’s last name.
	public var last_name: String? {
		get { return json["last_name"].string }
		set { json["last_name"].string = newValue }
	}
		
    /// *Optional.* User‘s or bot’s username.
	public var username: String? {
		get { return json["username"].string }
		set { json["username"].string = newValue }
	}
	
	public init(json: JSON = [:]) {
		self.json = json
	}
}


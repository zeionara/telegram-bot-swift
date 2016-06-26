// Telegram Bot SDK for Swift (unofficial).
// (c) 2015 - 2016 Andrey Fidrya. MIT license. See LICENSE for more information.

import Foundation
import SwiftyJSON

public extension TelegramBot {
FIX COMMENTS
	public enum ChatAction: String {
		case typing = "typing"
		case upload_photo = "upload_photo"
		case record_video = "record_video"
		case upload_video = "upload_video"
		case record_audio = "record_audio"
		case upload_audio = "upload_audio"
		case upload_document = "upload_document"
		case find_location = "find_location"
	}
	
	/// Tells the user that something is happening on the bot's side. Blocking version.
	/// - Returns: true on success. Nil on error, in which case `lastError` contains the details.
	/// - SeeAlso: <https://core.telegram.org/bots/api#sendchataction>
	@discardableResult
	public func sendChatActionSync(chat_id: ChatId, action: ChatAction,
	                               _ parameters: [String: Any?] = [:]) -> Bool? {
		return requestSync("sendChatAction", defaultParameters["sendChatAction"], parameters,
		                   ["chat_id": chat_id, "action": action])
	}
	
	/// Tells the user that something is happening on the bot's side. Asynchronous version.
	/// - Returns: true on success. Nil on error, in which case `error` contains the details.
	/// - SeeAlso: <https://core.telegram.org/bots/api#sendchataction>
	public func sendChatActionAsync(chat_id: ChatId, action: ChatAction,
	                                _ parameters: [String: Any?] = [:],
	                                queue: DispatchQueue = DispatchQueue.main,
	                                completion: SendChatActionCompletion? = nil) {
		requestAsync("sendChatAction", defaultParameters["sendChatAction"], parameters,
		             ["chat_id": chat_id, "action": action],
		             queue: queue, completion: completion)
	}
}


// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation

public extension TelegramBot {
    typealias SendContactCompletion = (result: Message?, error: DataTaskError?) -> ()

    /// Use this method to send phone contacts. On success, the sent Message is returned.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - phone_number: Contact's phone number
    ///     - first_name: Contact's first name
    ///     - last_name: Contact's last name
    ///     - disable_notification: Sends the message silently. iOS users will not receive a notification, Android users will receive a notification with no sound.
    ///     - reply_to_message_id: If the message is a reply, ID of the original message
    ///     - reply_markup: Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to hide keyboard or to force a reply from the user.
    /// - Returns: Message on success. Nil on error, in which case `TelegramBot.lastError` contains the details.
    /// - Note: Blocking version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#sendcontact>
    @discardableResult
    public func sendContactSync(
            chat_id: ChatId,
            phone_number: String,
            first_name: String,
            last_name: String? = nil,
            disable_notification: Bool? = nil,
            reply_to_message_id: Int? = nil,
            reply_markup: Markup? = nil,
            _ parameters: [String: Any?] = [:]) -> Message? {
        return requestSync("sendContact", defaultParameters["sendContact"], parameters, [
            "chat_id": chat_id,
            "phone_number": phone_number,
            "first_name": first_name,
            "last_name": last_name,
            "disable_notification": disable_notification,
            "reply_to_message_id": reply_to_message_id,
            "reply_markup": reply_markup])
    }

    /// Use this method to send phone contacts. On success, the sent Message is returned.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - phone_number: Contact's phone number
    ///     - first_name: Contact's first name
    ///     - last_name: Contact's last name
    ///     - disable_notification: Sends the message silently. iOS users will not receive a notification, Android users will receive a notification with no sound.
    ///     - reply_to_message_id: If the message is a reply, ID of the original message
    ///     - reply_markup: Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to hide keyboard or to force a reply from the user.
    /// - Returns: Message on success. Nil on error, in which case `error` contains the details.
    /// - Note: Asynchronous version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#sendcontact>
    public func sendContactAsync(
            chat_id: ChatId,
            phone_number: String,
            first_name: String,
            last_name: String? = nil,
            disable_notification: Bool? = nil,
            reply_to_message_id: Int? = nil,
            reply_markup: Markup? = nil,
            _ parameters: [String: Any?] = [:],
            queue: DispatchQueue = .main,
            completion: SendContactCompletion? = nil) {
        return requestAsync("sendContact", defaultParameters["sendContact"], parameters, [
            "chat_id": chat_id,
            "phone_number": phone_number,
            "first_name": first_name,
            "last_name": last_name,
            "disable_notification": disable_notification,
            "reply_to_message_id": reply_to_message_id,
            "reply_markup": reply_markup],
            queue: queue, completion: completion)
    }
}


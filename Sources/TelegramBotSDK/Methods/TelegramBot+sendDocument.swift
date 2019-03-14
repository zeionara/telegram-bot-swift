// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import Dispatch

public extension TelegramBot {
    typealias SendDocumentCompletion = (_ result: Message?, _ error: DataTaskError?) -> ()

    /// Use this method to send general files. On success, the sent Message is returned. Bots can currently send files of any type of up to 50 MB in size, this limit may be changed in the future.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - document: File to send. Pass a file_id as String to send a file that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. More info on Sending Files »
    ///     - caption: Document caption (may also be used when resending documents by file_id), 0-200 characters
    ///     - parse_mode: Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
    ///     - disable_notification: Sends the message silently. Users will receive a notification with no sound.
    ///     - reply_to_message_id: If the message is a reply, ID of the original message
    ///     - reply_markup: Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.
    /// - Returns: Message on success. Nil on error, in which case `TelegramBot.lastError` contains the details.
    /// - Note: Blocking version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#senddocument>
    @discardableResult
    public func sendDocumentSync(
            chatId: ChatId,
            document: FileInfo,
            caption: String? = nil,
            parseMode: ParseMode? = nil,
            disableNotification: Bool? = nil,
            replyToMessageId: Int? = nil,
            replyMarkup: ReplyMarkup? = nil,
            _ parameters: [String: Any?] = [:]) -> Message? {
        return requestSync("sendDocument", defaultParameters["sendDocument"], parameters, [
            "chat_id": chatId,
            "document": document,
            "caption": caption,
            "parse_mode": parseMode?.rawValue,
            "disable_notification": disableNotification,
            "reply_to_message_id": replyToMessageId,
            "reply_markup": replyMarkup])
    }

    /// Use this method to send general files. On success, the sent Message is returned. Bots can currently send files of any type of up to 50 MB in size, this limit may be changed in the future.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - document: File to send. Pass a file_id as String to send a file that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. More info on Sending Files »
    ///     - caption: Document caption (may also be used when resending documents by file_id), 0-200 characters
    ///     - parse_mode: Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
    ///     - disable_notification: Sends the message silently. Users will receive a notification with no sound.
    ///     - reply_to_message_id: If the message is a reply, ID of the original message
    ///     - reply_markup: Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.
    /// - Returns: Message on success. Nil on error, in which case `error` contains the details.
    /// - Note: Asynchronous version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#senddocument>
    public func sendDocumentAsync(
            chatId: ChatId,
            document: FileInfo,
            caption: String? = nil,
            parseMode: ParseMode? = nil,
            disableNotification: Bool? = nil,
            replyToMessageId: Int? = nil,
            replyMarkup: ReplyMarkup? = nil,
            _ parameters: [String: Any?] = [:],
            queue: DispatchQueue = .main,
            completion: SendDocumentCompletion? = nil) {
        return requestAsync("sendDocument", defaultParameters["sendDocument"], parameters, [
            "chat_id": chatId,
            "document": document,
            "caption": caption,
            "parse_mode": parseMode?.rawValue,
            "disable_notification": disableNotification,
            "reply_to_message_id": replyToMessageId,
            "reply_markup": replyMarkup],
            queue: queue, completion: completion)
    }
}


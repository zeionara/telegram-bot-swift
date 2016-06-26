// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation

public extension TelegramBot {
    typealias GetMeCompletion = (result: User?, error: DataTaskError?) -> ()

    /// A simple method for testing your bot's auth token. Requires no parameters. Returns basic information about the bot in form of a User object.
    /// - Returns: User on success. Nil on error, in which case `TelegramBot.lastError` contains the details.
    /// - Note: Blocking version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#getme>
    @discardableResult
    public func getMeSync(,
            _ parameters: [String: Any?] = [:]) -> User? {
        return requestSync("getMe", defaultParameters["getMe"], parameters)
    }

    /// A simple method for testing your bot's auth token. Requires no parameters. Returns basic information about the bot in form of a User object.
    /// - Returns: User on success. Nil on error, in which case `error` contains the details.
    /// - Note: Asynchronous version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#getme>
    public func getMeAsync(,
            _ parameters: [String: Any?] = [:],
            queue: DispatchQueue = .main,
            completion: GetMeCompletion? = nil) {
        return requestAsync("getMe", defaultParameters["getMe"], parameters,
            queue: queue, completion: completion)
    }
}


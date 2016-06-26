// Telegram Bot SDK for Swift (unofficial).
// (c) 2015 - 2016 Andrey Fidrya. MIT license. See LICENSE for more information.

import Foundation

public protocol ChatIdType: JsonConvertible {
}

extension Int64: ChatIdType {
}

extension String: ChatIdType {
}

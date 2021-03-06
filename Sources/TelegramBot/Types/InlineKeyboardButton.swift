// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import SwiftyJSON

/// This object represents one button of an inline keyboard. You must use exactly one of the optional fields.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#inlinekeyboardbutton>

public struct InlineKeyboardButton: JsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: JSON

    /// Label text on the button
    public var text: String {
        get { return json["text"].stringValue }
        set { json["text"].stringValue = newValue }
    }

    /// Optional. HTTP url to be opened when button is pressed
    public var url: String? {
        get { return json["url"].string }
        set { json["url"].string = newValue }
    }

    /// Optional. Data to be sent in a callback query to the bot when button is pressed, 1-64 bytes
    public var callback_data: String? {
        get { return json["callback_data"].string }
        set { json["callback_data"].string = newValue }
    }

    /// Optional. If set, pressing the button will prompt the user to select one of their chats, open that chat and insert the bot‘s username and the specified inline query in the input field. Can be empty, in which case just the bot’s username will be inserted.
    /// 
    /// Note: This offers an easy way for users to start using your bot in inline mode when they are currently in a private chat with it. Especially useful when combined with switch_pm… actions – in this case the user will be automatically returned to the chat they switched from, skipping the chat selection screen.
    public var switch_inline_query: String? {
        get { return json["switch_inline_query"].string }
        set { json["switch_inline_query"].string = newValue }
    }

    /// Optional. If set, pressing the button will insert the bot‘s username and the specified inline query in the current chat's input field. Can be empty, in which case only the bot’s username will be inserted.
    /// 
    /// This offers a quick way for the user to open your bot in inline mode in the same chat – good for selecting something from multiple options.
    public var switch_inline_query_current_chat: String? {
        get { return json["switch_inline_query_current_chat"].string }
        set { json["switch_inline_query_current_chat"].string = newValue }
    }

    /// Optional. Description of the game that will be launched when the user presses the button.
    /// 
    /// NOTE: This type of button must always be the first button in the first row.
    public var callback_game: CallbackGame? {
        get {
            let value = json["callback_game"]
            return value.isNullOrUnknown ? nil : CallbackGame(json: value)
        }
        set {
            json["callback_game"] = newValue?.json ?? nil
        }
    }

    public init(json: JSON = [:]) {
        self.json = json
    }
}

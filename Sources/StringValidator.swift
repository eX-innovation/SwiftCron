//
//  StringValidator.swift
//  Pods
//
//  Created by Keegan Rush on 2016/12/22.
//
//

import Foundation

struct StringValidator {

    static func isUpperCaseOrNumber(_ value: String) -> Bool {
        return validate(value, regex: "[\\*,\\/\\-0-9A-Z]+")
    }

    static func isNumber(_ value: String) -> Bool {
        return validate(value, regex: "[\\*,\\/\\-0-9]+")
    }

    static func isAlphanumeric(_ value: String) -> Bool {
        return validate(value, regex: "[\\*,\\/\\-\\?LW0-9A-Za-z]+")
    }

    private static func validate(_ value: String, regex: String) -> Bool {
        typealias Regex = NSRegularExpression

        guard let regex = try? Regex(pattern: regex, options: []) else { return false }
        return regex.numberOfMatches(in: value, options: [], range: NSMakeRange(0, value.count)) > 0
    }
}

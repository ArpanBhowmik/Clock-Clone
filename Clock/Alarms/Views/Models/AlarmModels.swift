//
//  Models.swift
//  Clock
//
//  Created by Arpan Bhowmik on 16/8/24.
//

import Foundation

struct Alarm: Equatable, Hashable, Codable {
    var id = UUID()
    var repeatRoutine: RepeatRoutine
    var title: String
    var sound: String
    var snooze: Bool
    var hour: String
    var minute: String
    var meridiem: Meridiem
}

enum RepeatRoutine: Codable {
    case never
    case saturday
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

enum Meridiem: String, Codable {
    case am = "AM"
    case pm = "PM"
}

let testAlarm = Alarm(
    repeatRoutine: .never,
    title: "Alarm",
    sound: "",
    snooze: false,
    hour: "6",
    minute: "30",
    meridiem: .pm
)

let emptyAlarm = Alarm(
    repeatRoutine: .never,
    title: "",
    sound: "",
    snooze: false,
    hour: "",
    minute: "",
    meridiem: .pm
)

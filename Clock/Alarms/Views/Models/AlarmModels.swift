//
//  Models.swift
//  Clock
//
//  Created by Arpan Bhowmik on 16/8/24.
//

import Foundation

struct Alarm {
    let repeatRoutine: RepeatRoutine
    let title: String
    let sound: String
    let snooze: Bool
    let hour: String
    let minute: String
    let meridiem: Meridiem
}

enum RepeatRoutine {
    case never
    case saturday
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

enum Meridiem {
    case am
    case pm
}

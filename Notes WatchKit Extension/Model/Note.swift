//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Nerijus Surkys on 2022-05-16.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}

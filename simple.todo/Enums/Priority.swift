//
//  Priority.swift
//  simple.todo
//
//  Created by Haydar Demir on 30.10.2021.
//

import Foundation

enum Priority: String, Identifiable, CaseIterable {
    var id: UUID {
        return UUID()
    }

    case low = "Low"
    case medium = "Medium"
    case high = "High"
}

extension Priority {
    var title: String {
        switch self {
            case .low:
                return "Low"
            case .medium:
                return "Medium"
            case .high:
                return "High"
        }
    }
}

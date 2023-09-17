/*
 
 Project: PreviewProviderPlus
 File: Device+iPhone+Property+Value.swift
 Created by: Egor Boyko
 Date: 17.09.2023
 
 Status: #Completed | #Not decorated
 
 */

import struct SwiftUI.PreviewDevice

public extension Device.iPhone {
    var value: SwiftUI.PreviewDevice {
        switch self {
        case .iPhoneSE1St:
            return .init(rawValue: "\(Self.self) SE (1st generation)")
        case .iPhoneSE2St:
            return .init(rawValue: "\(Self.self) SE (2nd generation)")
        case .iPhoneSE3St:
            return .init(rawValue: "\(Self.self) SE (3rd generation)")
        default:
            return .init(rawValue: "\(Self.self) \(self.label)")
        }
    }
}

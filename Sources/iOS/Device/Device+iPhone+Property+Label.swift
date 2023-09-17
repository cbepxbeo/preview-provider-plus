/*
 
 Project: PreviewProviderPlus
 File: Device+iPhone+Property+Label.swift
 Created by: Egor Boyko
 Date: 17.09.2023
 
 Status: #Completed | #Not decorated
 
 */

public extension Device.iPhone {
    var label: String {
        switch self {
        case .iPhoneSE1St:
            return "SE 1"
        case .iPhoneSE2St:
            return "SE 2"
        case .iPhoneSE3St:
            return "SE 3"
        case .iPhone6S:
            return "6S"
        case .iPhone6SPlus:
            return "6S Plus"
        case .iPhone7:
            return "7"
        case .iPhone7Plus:
            return "7 Plus"
        case .iPhone8:
            return "8"
        case .iPhone8Plus:
            return "8 Plus"
        case .iPhoneX:
            return "X"
        case .iPhoneXS:
            return "XS"
        case .iPhoneXSMax:
            return "XS Max"
        case .iPhoneXR:
            return "XR"
        case .iPhone11:
            return "11"
        case .iPhone11Pro:
            return "11 Pro"
        case .iPhone11ProMax:
            return "11 Pro Max"
        case .iPhone12Mini:
            return "12 Mini"
        case .iPhone12:
            return "12"
        case .iPhone12Pro:
            return "12 Pro"
        case .iPhone12ProMax:
            return "12 Pro Max"
        case .iPhone13Mini:
            return "13 Mini"
        case .iPhone13:
            return "13"
        case .iPhone13Pro:
            return "13 Pro"
        case .iPhone13ProMax:
            return "13 Pro Max"
        case .iPhone14:
            return "14"
        case .iPhone14Plus:
            return "14 Plus"
        case .iPhone14Pro:
            return "14 Pro"
        case .iPhone14ProMax:
            return "14 Pro Max"
        }
    }
}

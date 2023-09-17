/*
 
 Project: PreviewProviderPlus
 File: PreviewDeviceOption.swift
 Created by: Egor Boyko
 Date: 17.09.2023
 
 Status: #Completed | #Not decorated
 
 */

import SwiftUI

public protocol PreviewDevice {
    var label: String { get }
    var value: SwiftUI.PreviewDevice { get }
}

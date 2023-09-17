/*
 
 Project: PreviewProviderPlus
 File: ContentWrapper+Modifiers.swift
 Created by: Egor Boyko
 Date: 17.09.2023
 
 Status: #Completed | #Decoreted
 
 */

import SwiftUI

public extension ContentWrapper {
    ///Sets a specific color scheme
    func appliedColorScheme(_ value: ColorScheme) -> Self {
        var temp = self
        temp.colorScheme = .present(value)
        return temp
    }
    ///Action that will be performed before the preview is shown
    func preliminaryAction(_ action: @escaping () -> Void) -> Self {
        var temp = self
        temp.preliminaryAction = .init(value: action)
        return temp
    }
    ///Sets any device
    func appliedDevice(anyone value: PreviewProviderPlus.PreviewDevice) -> Self {
        var temp = self
        temp.device = .present(value)
        return temp
    }
    ///Sets a device from pre-defined options
    func appliedDevice(_ value: Device.iPhone) -> Self {
        var temp = self
        temp.device = .present(value)
        return temp
    }
}

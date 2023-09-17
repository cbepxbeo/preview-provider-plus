/*
 
 Project: PreviewProviderPlus
 File: ContentWrapper+MakeConfiguredContent.swift
 Created by: Egor Boyko
 Date: 17.09.2023
 
 Status: #Completed | #Not required
 
 */

import SwiftUI

extension ContentWrapper {
    @ViewBuilder
    func makeConfiguredContent() -> some View {
        switch self.device {
        case .none:
            Group{
                switch self.colorScheme {
                case .none:
                    self.makeContent()
                        .preferredColorScheme(.dark)
                        .previewDevice(Device.iPhone.iPhone14ProMax.value)
                        .previewDisplayName("\(Device.iPhone.iPhone14ProMax.label) - Dark")
                    self.makeContent()
                        .preferredColorScheme(.light)
                        .previewDevice(Device.iPhone.iPhone14ProMax.value)
                        .previewDisplayName("\(Device.iPhone.iPhone14ProMax.label) - Light")
                    self.makeContent()
                        .preferredColorScheme(.dark)
                        .previewDevice(Device.iPhone.iPhoneSE1St.value)
                        .previewDisplayName("\(Device.iPhone.iPhoneSE1St.label) - Dark")
                    self.makeContent()
                        .preferredColorScheme(.light)
                        .previewDevice(Device.iPhone.iPhoneSE1St.value)
                        .previewDisplayName("\(Device.iPhone.iPhoneSE1St.label) - Light")
                case .present(let colorScheme):
                    self.makeContent()
                        .preferredColorScheme(colorScheme)
                        .previewDevice(Device.iPhone.iPhone14ProMax.value)
                        .previewDisplayName("\(Device.iPhone.iPhone14ProMax.label)")
                    
                    self.makeContent()
                        .preferredColorScheme(colorScheme)
                        .previewDevice(Device.iPhone.iPhoneSE1St.value)
                        .previewDisplayName("\(Device.iPhone.iPhoneSE1St.label)")
                }
            }
        case .present(let device):
            Group{
                switch self.colorScheme {
                case .none:
                    self.makeContent()
                        .preferredColorScheme(.dark)
                        .previewDevice(device.value)
                        .previewDisplayName("\(device.label) - Dark")
                    
                    self.makeContent()
                        .preferredColorScheme(.light)
                        .previewDevice(device.value)
                        .previewDisplayName("\(device.label) - Light")
                case .present(let colorScheme):
                    self.makeContent()
                        .preferredColorScheme(colorScheme)
                        .previewDevice(device.value)
                        .previewDisplayName("\(device.label)")
                }
            }
        }
    }
}

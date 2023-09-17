/*
 
 Project: PreviewProviderPlus
 File: ContentWrapper+MakeContent.swift
 Created by: Egor Boyko
 Date: 17.09.2023
 
 Status: #Completed | #Not required
 
 */

import SwiftUI

extension ContentWrapper {
    @ViewBuilder
    func makeContent() -> some View {
        let _ = { self.preliminaryAction?.value() }()
        if let content0 {
            content0.value()
        } else if let content1 {
            content1.value($s1)
        } else if let content2 {
            content2.value($s1, $s2)
        } else if let content3 {
            content3.value($s1, $s2, $s3)
        } else if let content4 {
            content4.value($s1, $s2, $s3, $s4)
        } else if let content5 {
            content5.value($s1, $s2, $s3, $s4, $s5)
        }
    }
}

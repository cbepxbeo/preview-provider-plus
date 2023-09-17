/*
 
 Project: PreviewProviderPlus
 File: ContentWrapper.swift
 Created by: Egor Boyko
 Date: 17.09.2023
 
 Status: #Completed | #Not decorated
 
 */

import SwiftUI

public struct ContentWrapper<Content: View, S1, S2, S3, S4, S5>: View {
    typealias PreliminaryAction = ActionWrapper<() -> Void>
    typealias C0 = ActionWrapper<() -> Content>
    typealias C1 = ActionWrapper<(Binding<S1>) -> Content>
    typealias C2 = ActionWrapper<(Binding<S1>, Binding<S2>) -> Content>
    typealias C3 = ActionWrapper<(Binding<S1>, Binding<S2>, Binding<S3>) -> Content>
    typealias C4 = ActionWrapper<(Binding<S1>, Binding<S2>, Binding<S3>, Binding<S4>) -> Content>
    typealias C5 = ActionWrapper<(
        Binding<S1>,
        Binding<S2>,
        Binding<S3>,
        Binding<S4>,
        Binding<S5>
    ) -> Content>
    
    init(
        s1: S1,
        s2: S2,
        s3: S3,
        s4: S4,
        s5: S5,
        content0: C0? = nil,
        content1: C1? = nil,
        content2: C2? = nil,
        content3: C3? = nil,
        content4: C4? = nil,
        content5: C5? = nil) {
            self._s1 = .init(initialValue: s1)
            self._s2 = .init(initialValue: s2)
            self._s3 = .init(initialValue: s3)
            self._s4 = .init(initialValue: s4)
            self._s5 = .init(initialValue: s5)
            self.content0 = content0
            self.content1 = content1
            self.content2 = content2
            self.content3 = content3
            self.content4 = content4
            self.content5 = content5
            self.device = .none
            self.colorScheme = .none
        }
    
    @State var s1: S1
    @State var s2: S2
    @State var s3: S3
    @State var s4: S4
    @State var s5: S5
    
    let content0: C0?
    let content1: C1?
    let content2: C2?
    let content3: C3?
    let content4: C4?
    let content5: C5?
    
    var preliminaryAction: PreliminaryAction?
    var device: DeviceOption
    var colorScheme: ColorSchemeOption
    
    public var body: some View {
        self.makeConfiguredContent()
    }
}

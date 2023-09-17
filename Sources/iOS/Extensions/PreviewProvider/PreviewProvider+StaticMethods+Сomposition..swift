/*
 
 Project: PreviewProviderPlus
 File: PreviewProvider+StaticMethods+Сomposition.swift
 Created by: Egor Boyko
 Date: 17.09.2023
 
 Status: #Completed | #Not decorated
 
 */

import SwiftUI

extension PreviewProvider {
    public static func composition<Content: View>(
        @ViewBuilder content: @escaping () -> Content
    ) -> ContentWrapper<Content, Bool, Bool, Bool, Bool, Bool> {
            return .init(
                s1: false,
                s2: false,
                s3: false,
                s4: false,
                s5: false,
                content0: .init(
                    value: content
                )
            )
        }
    
    public static func composition<Content: View, T>(
        _ initialValue: T,
        @ViewBuilder content: @escaping (_ value: Binding<T>) -> Content
    ) -> ContentWrapper<Content, T, Bool, Bool, Bool, Bool> {
            return .init(
                s1: initialValue,
                s2: false,
                s3: false,
                s4: false,
                s5: false,
                content1: .init(
                    value: content
                )
            )
        }
    
    public static func composition<Content: View, T1, T2>(
        _ initialValue1: T1,
        _ initialValue2: T2,
        @ViewBuilder content: @escaping (_ value1: Binding<T1>, _ value2: Binding<T2>) -> Content
    ) -> ContentWrapper<Content, T1, T2, Bool, Bool, Bool> {
            return .init(
                s1: initialValue1,
                s2: initialValue2,
                s3: false,
                s4: false,
                s5: false,
                content2: .init(
                    value: content
                )
            )
        }
    
    public static func composition<Content: View, T1, T2, T3>(
        _ initialValue1: T1,
        _ initialValue2: T2,
        _ initialValue3: T3,
        @ViewBuilder content: @escaping (
            _ value1: Binding<T1>,
            _ value2: Binding<T2>,
            _ value3: Binding<T3>
        ) -> Content) -> ContentWrapper<Content, T1, T2, T3, Bool, Bool> {
            return .init(
                s1: initialValue1,
                s2: initialValue2,
                s3: initialValue3,
                s4: false,
                s5: false,
                content3: .init(
                    value: content
                )
            )
        }
    
    
    public static func composition<Content: View, T1, T2, T3, T4>(
        _ initialValue1: T1,
        _ initialValue2: T2,
        _ initialValue3: T3,
        _ initialValue4: T4,
        @ViewBuilder content: @escaping (
            _ value1: Binding<T1>,
            _ value2: Binding<T2>,
            _ value3: Binding<T3>,
            _ value4: Binding<T4>
        ) -> Content) -> ContentWrapper<Content, T1, T2, T3, T4, Bool> {
            return .init(
                s1: initialValue1,
                s2: initialValue2,
                s3: initialValue3,
                s4: initialValue4,
                s5: false,
                content4: .init(
                    value: content
                )
            )
        }
    
    
    public static func composition<Content: View, T1, T2, T3, T4, T5>(
        _ initialValue1: T1,
        _ initialValue2: T2,
        _ initialValue3: T3,
        _ initialValue4: T4,
        _ initialValue5: T5,
        @ViewBuilder content: @escaping (
            _ value1: Binding<T1>,
            _ value2: Binding<T2>,
            _ value3: Binding<T3>,
            _ value4: Binding<T4>,
            _ value5: Binding<T5>
        ) -> Content) -> ContentWrapper<Content, T1, T2, T3, T4, T5> {
            return .init(
                s1: initialValue1,
                s2: initialValue2,
                s3: initialValue3,
                s4: initialValue4,
                s5: initialValue5,
                content5: .init(
                    value: content
                )
            )
        }
}

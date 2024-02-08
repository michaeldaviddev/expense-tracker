//
//  View+Extentions.swift
//  Expense Tracker
//
//  Created by Michael David Machacuay on 6/02/24.
//

import SwiftUI

extension View {
    @ViewBuilder
    func hSpacing(_ aligment: Alignment = .center) -> some View {
        self
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: aligment)
    }
    
    @ViewBuilder
    func vSpacing(_ aligment: Alignment = .center) -> some View {
        self
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: aligment)
    }
    
    var safeArea: UIEdgeInsets {
        if let windowScene = (UIApplication.shared.connectedScenes.first as? UIWindowScene) {
            return windowScene.keyWindow?.safeAreaInsets ?? .zero
        }
        
        return .zero
    }
    
    func format(date: Date, format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date)
    }
    
    func currencyString(_ value: Double, allowedDigits: Int = 2) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = allowedDigits
        
        return formatter.string(from: .init(value: value)) ?? ""
    }
}

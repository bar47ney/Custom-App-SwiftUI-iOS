import Foundation
import SwiftUI

enum CustomFonts: String {
    case ubuntu = "Ubuntu"
}

extension Font {
    static func custom(_ customFonts: CustomFonts, size: CGFloat) -> Font {
        Font.custom(customFonts.rawValue, size: size)
    }
}

struct FontBuilder {
    let font: Font
    let tracking: Double
    let lineSpacing: Double
    let verticalPadding: Double

    init(
        customFont: CustomFonts,
        weight: Font.Weight = .regular,
        fontSize: Double,
        letterSpacing: Double = 1,
        lineHeight: Double
    ) {
        self.font = Font.custom(customFont, size: fontSize).weight(weight)
        self.tracking = fontSize * letterSpacing

        let uiFont =
            UIFont(name: customFont.rawValue, size: fontSize)
            ?? .systemFont(ofSize: fontSize)
        self.lineSpacing = lineHeight - uiFont.lineHeight
        self.verticalPadding = lineSpacing / 2
    }
}

extension FontBuilder {
    static let h2 = FontBuilder(
        customFont: .ubuntu,
        weight: .bold,
        fontSize: 18,
        lineHeight: 26.0)
    
    static let subTitle = FontBuilder(
        customFont: .ubuntu,
        weight: .regular,
        fontSize: 14,
        lineHeight: 16)
    
    static let smallBtnText = FontBuilder(
        customFont: .ubuntu,
        weight: .bold,
        fontSize: 12,
        lineHeight: 24)
    
    static let bodyText = FontBuilder(
        customFont: .ubuntu,
        weight: .regular,
        fontSize: 18,
        lineHeight: 24)
    
    static let bottomBarText = FontBuilder(
        customFont: .ubuntu,
        weight: .heavy,
        fontSize: 12,
        lineHeight: 16)
}

extension Text {
    func font(_ customFonts: CustomFonts, size: CGFloat) -> Text {
        self.font(Font.custom(customFonts, size: size))
    }
}

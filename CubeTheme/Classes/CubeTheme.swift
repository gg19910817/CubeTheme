//
//  CubeTheme.swift
//  TEMPLATE
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright © TODAYS_YEAR OWNER_TEAM. All rights reserved.
//

import UIKit

/// public无法被其他module继承
public class CubeTheme {
    
    /// 内部-状态
    public lazy var color = CubeThemeColor()
    public lazy var size = CubeThemeSize()
    public var fontName: String?
    
}

/// 提供给外部的方法
public extension CubeTheme {
    func style(_ label: UILabel, _ style: String? = nil) {
        switch style {
        case "headline": // 大字标题
            label.textColor = color.normal
            label.font = fontFor(size.m + 10)
        case "title": // 标题
            label.textColor = color.normal
            label.font = fontFor(size.m + 6)
        case "body": // 内容
            label.textColor = color.normal
            label.font = fontFor(size.m)
        case "tip": // 提示语
            label.textColor = color.normal
            label.font = fontFor(size.m)
        default:
            break
        }
    }
}

/// 私有方法
private extension CubeTheme {
    func fontFor(_ size: CGFloat) -> UIFont {
        if let fontName = fontName,
            let font = UIFont.init(name: fontName, size: size) {
            return font
        }
        return .systemFont(ofSize: size)
    }
}

public extension UIColor {
    convenience init(hex string: String) {
      var hex = string.hasPrefix("#")
        ? String(string.dropFirst())
        : string
      guard hex.count == 3 || hex.count == 6
        else {
          self.init(white: 1.0, alpha: 0.0)
          return
      }
      if hex.count == 3 {
        for (index, char) in hex.enumerated() {
          hex.insert(char, at: hex.index(hex.startIndex, offsetBy: index * 2))
        }
      }
      
      guard let intCode = Int(hex, radix: 16) else {
        self.init(white: 1.0, alpha: 0.0)
        return
      }
      
      self.init(
        red:   CGFloat((intCode >> 16) & 0xFF) / 255.0,
        green: CGFloat((intCode >> 8) & 0xFF) / 255.0,
        blue:  CGFloat((intCode) & 0xFF) / 255.0, alpha: 1.0)
    }
}

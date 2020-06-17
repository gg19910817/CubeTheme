//
//  CubeThemeColor.swift
//  TEMPLATE
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright © TODAYS_YEAR OWNER_TEAM. All rights reserved.
//

import UIKit

public class CubeThemeColor {}

public extension CubeThemeColor {
    
    /// NavigaionBar颜色，控件前景色。
    var primary: UIColor {
        if #available(iOS 13.0, *) {
            return .init { (collection) -> UIColor in
                return collection.userInterfaceStyle == .dark ? .systemRed : .init(hex: "#FA7268")
            }
        }
        return .init(hex: "#FA7268")
    }
    
    /// ViewController的背景色
    var viewController: UIColor {
        if #available(iOS 13.0, *) {
            return .init { (collection) -> UIColor in
                return collection.userInterfaceStyle == .dark ? .black : .white
            }
        }
        return .white
    }
    
    /// line的颜色，switch,button等控件disable的颜色。
    var disable: UIColor {
        if #available(iOS 13.0, *) {
            return .init { (collection) -> UIColor in
                return collection.userInterfaceStyle == .dark ? .white : .init(hex: "#E1E1E1")
            }
        }
        return .init(hex: "#E1E1E1")
    }
    
    /// 输入框背景色
    var input: UIColor {
        if #available(iOS 13.0, *) {
            return .init { (collection) -> UIColor in
                return collection.userInterfaceStyle == .dark ? .init(hex: "#141414") : .init(hex: "#FAFAFA")
            }
        }
        return .init(hex: "#FAFAFA")
    }
    
}

/// 文本颜色
public extension CubeThemeColor {
    
    // 文本普通状态下颜色
    var normal: UIColor {
        if #available(iOS 13.0, *) {
            return .init { (collection) -> UIColor in
                return collection.userInterfaceStyle == .dark ? .white : .black
            }
        }
        return .black
    }
    
}

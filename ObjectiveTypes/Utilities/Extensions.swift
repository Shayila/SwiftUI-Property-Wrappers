//
//  Extensions.swift
//  ObjectiveTypes
//
//  Created by Aiysha on 10/01/25.
//

import Foundation
import UIKit
import SwiftUI

class Constant : NSObject {
    
    static var screenWidth = UIScreen().bounds.width
    static var screenHeight = UIScreen().bounds.height

    
}

extension UIScreen {
    static func getScreenWidth() -> CGFloat{
        return UIScreen.main.bounds.width
    }
    
    static func getScreenHeight() -> CGFloat{
        return UIScreen.main.bounds.height
    }
}

//
//  Helper.swift
//  MeetUp
//
//  Created by Pei Qin on 2018/7/17.
//  Copyright © 2018 Cappillen. All rights reserved.
//

import Foundation
import UIKit

class TestClass {
    var NewTime: Int?
    var NewMember: Int?
    var NewDate: String?
    
    init(NewTime: Int, NewMember: Int, NewDate: String?) {
        self.NewTime = NewTime
        self.NewMember = NewMember
        self.NewDate = NewDate
    }
    
    convenience init(NewTime: Int, NewMember: Int) {
        self.init(NewTime: NewTime, NewMember: NewMember, NewDate: Date().convertToString())
    }
}

extension Date {
    func convertToString() -> String {
        return DateFormatter.localizedString(from: self, dateStyle: DateFormatter.Style.medium, timeStyle: DateFormatter.Style.none)
    }
}

//class ResultClass {
//    var NewArray: [[Int]]?
//    init(NewArray: [[Int]]) {
//        self.NewArray = NewArray
//    }
//}

extension UIStoryboard {
    enum MeetSBType: String {
        case main
        case calendar
        case testboard
        var filename: String {
            return rawValue.capitalized
        }
    }
    
    convenience init(type: MeetSBType, bundle: Bundle? = nil) {
        self.init(name: type.filename, bundle: bundle)
    }
    
    static func initializeViewController(for type: MeetSBType) -> UIViewController {
        let storyboard = UIStoryboard(type: type)
        guard let initialViewController = storyboard.instantiateInitialViewController() else {
            fatalError("Couldn't initialize initial view controller for \(type.filename) storyboard.")
        }
        return initialViewController
    }
}

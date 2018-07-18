//
//  DateViewController.swift
//  MeetUp
//
//  Created by Pei Qin on 2018/7/17.
//  Copyright © 2018 Cappillen. All rights reserved.
//

import Foundation
import UIKit

class DateViewController: UIViewController {
    
    var testFromDurationPage = TestClass(NewTime: 0, NewMember: 0)
    
    @IBAction func toCalendar(_ sender: Any) {
        let intializeCalendarView = UIStoryboard.initializeViewController(for: UIStoryboard.MeetSBType.testboard)//changeForCal
        self.view.window?.rootViewController = intializeCalendarView
        self.view.window?.makeKeyAndVisible()
    }
    
//    var pickedDate =
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else {return}
        switch identifier {
        case "toCalendar"://changeForCal
            let destination = segue.destination as! CalendarViewController
            destination.testFromDatePage.NewTime = testFromDurationPage.NewTime
            destination.testFromDatePage.NewMember = testFromDurationPage.NewMember
            destination.testFromDatePage.NewDate = testFromDurationPage.NewDate
        default:
            print("something went wrong")
        }
    }
    
}

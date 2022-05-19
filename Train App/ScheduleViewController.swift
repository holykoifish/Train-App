//
//  ScheduleViewController.swift
//  Train App
//
//  Created by Hazel Dodds on 4/11/22.
//

import UIKit

class ScheduleViewController: UIViewController {

    
    @IBOutlet weak var timeOne: UIView!
    @IBOutlet weak var timeTwo: UIView!
    @IBOutlet weak var timeThree: UIView!
    @IBOutlet weak var timeFour: UIView!
    @IBOutlet weak var timeFive: UIView!
    
    @IBOutlet weak var dateOne: UILabel!
    @IBOutlet weak var monthOne: UILabel!
    @IBOutlet weak var hourOne: UILabel!
    @IBOutlet weak var dateTwo: UILabel!
    @IBOutlet weak var monthTwo: UILabel!
    @IBOutlet weak var hourTwo: UILabel!
    @IBOutlet weak var dateThree: UILabel!
    @IBOutlet weak var monthThree: UILabel!
    @IBOutlet weak var hourThree: UILabel!
    @IBOutlet weak var dateFour: UILabel!
    @IBOutlet weak var monthFour: UILabel!
    @IBOutlet weak var hourFour: UILabel!
    @IBOutlet weak var dateFive: UILabel!
    @IBOutlet weak var monthFive: UILabel!
    @IBOutlet weak var hourfive: UILabel!
    
    
    
    
    override func viewDidLoad() {
       super.viewDidLoad()
        let today = Date()
        let formatterMonth = DateFormatter()
        formatterMonth.dateFormat = "MMM"
        let formatterDay = DateFormatter()
        formatterDay.dateFormat = "d"
        let formatterTime = DateFormatter()
        formatterTime.dateFormat = "hh:mm"
        
        monthOne.text = formatterMonth.string(from: today)
        dateOne.text = formatterDay.string(from: today)
        hourOne.text = formatterTime.string(from: today + 1800)
        
        monthTwo.text = formatterMonth.string(from: today)
        dateTwo.text = formatterDay.string(from: today)
        hourTwo.text = formatterTime.string(from: today + 5400)
        
        monthThree.text = formatterMonth.string(from: today)
        dateThree.text = formatterDay.string(from: today)
        hourThree.text = formatterTime.string(from: today + 9000)
        
        monthFour.text = formatterMonth.string(from: today)
        dateFour.text = formatterDay.string(from: today)
        hourFour.text = formatterTime.string(from: today + 14400)
        
        monthFive.text = formatterMonth.string(from: today)
        dateFive.text = formatterDay.string(from: today)
        hourfive.text = formatterTime.string(from: today + 21600)
        
        
        
        
        self.view.backgroundColor = UIColor(red: 0.98, green: 0.95, blue: 0.90, alpha: 1.00)
        timeOne.backgroundColor = UIColor(red: 0.95, green: 0.87, blue: 0.77, alpha: 1.00)
        timeOne.layer.cornerRadius = 10.0
        timeTwo.backgroundColor = UIColor(red: 0.95, green: 0.87, blue: 0.77, alpha: 1.00)
        timeTwo.layer.cornerRadius = 10.0
        timeThree.backgroundColor = UIColor(red: 0.95, green: 0.87, blue: 0.77, alpha: 1.00)
        timeThree.layer.cornerRadius = 10.0
        timeFour.backgroundColor = UIColor(red: 0.95, green: 0.87, blue: 0.77, alpha: 1.00)
        timeFour.layer.cornerRadius = 10.0
        timeFive.backgroundColor = UIColor(red: 0.95, green: 0.87, blue: 0.77, alpha: 1.00)
        timeFive.layer.cornerRadius = 10.0
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

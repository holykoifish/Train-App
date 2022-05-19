//
//  SettingsViewController.swift
//  Train App
//
//  Created by Hazel Dodds on 4/11/22.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var settings = "Notification"
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = settings
        return cell
    }
    

    @IBOutlet weak var settingsTable:
        UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsTable.backgroundColor = UIColor(red: 0.98, green: 0.95, blue: 0.90, alpha: 1.00)
        self.view.backgroundColor = UIColor(red: 0.98, green: 0.95, blue: 0.90, alpha: 1.00)
        // Do any additional setup after loading the view.
        settingsTable.dataSource = self
        settingsTable.delegate = self
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

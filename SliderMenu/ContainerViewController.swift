//
//  ContainerViewController.swift
//  SliderMenu
//
//  Created by Appinventiv on 02/01/19.
//  Copyright © 2019 Vikash. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell")
        return cell ?? UITableViewCell()
       // return UITableViewCell()
    }

}

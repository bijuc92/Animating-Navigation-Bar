//
//  ViewController.swift
//  Animating Navigation Bar
//
//  Created by Nfonics on 01/02/17.
//  Copyright © 2017 Nfonics Solutions. All rights reserved.
//

import UIKit

class ViewController: AnimatingNavigationBarViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.tableFooterView = UIView()
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 500
        self.tableView.delegate = self
        self.navigationBarWith(title: "Navigation Title")
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


        

}

extension ViewController:UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }
        return 15
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageHeaderCell")
            return cell!
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
            cell.rowLabel.text = "Row \(indexPath.row)"
            return cell
        }
    }
}


extension ViewController:UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let a = self.tableView.contentOffset
        self.navigationBarAnimationWithPosition(y: a.y)
    }
    
}


//
//  ViewController.swift
//  WeatherTest
//
//  Created by YIXIY on 6/2/20.
//  Copyright © 2020 YIXIY. All rights reserved.
//

import UIKit

fileprivate let minHeaderHeight: CGFloat = 80
fileprivate let maxHeaderHeight: CGFloat = 160

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var headerHeight = maxHeaderHeight
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func animateHeader() {
    
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: [], animations: {
            self.view.layoutIfNeeded()
            
        }, completion: nil)
    }
}

extension ViewController: UITableViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {

    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {

    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {

    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return headerHeight
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView()
        header.backgroundColor = .red
        return header
    }
}

extension ViewController:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",   for: indexPath as IndexPath)
        return cell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

}


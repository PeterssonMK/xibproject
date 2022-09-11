//
//  CustomViewController.swift
//  XibBasedLayout
//
//  Created by Alexandr on 09.09.2022.
//

import UIKit

class CustomViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self 
        registerCells()

      
    }

}

extension CustomViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 14
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let oddCell = tableView.dequeueReusableCell(withIdentifier: String(describing: OddTableViewCell.self)) as! OddTableViewCell
    
        let evenCell = tableView.dequeueReusableCell(withIdentifier: String(describing: EvenTableViewCell.self)) as! EvenTableViewCell
        
        let extraCell = tableView.dequeueReusableCell(withIdentifier: String(describing: ExtraTableViewCell.self)) as! ExtraTableViewCell
        
        let ordinaryCell = tableView.dequeueReusableCell(withIdentifier: String(describing: OrdinaryTableViewCell.self)) as! OrdinaryTableViewCell

     
        if (1...10).contains(indexPath.row + 1) {
            if ((indexPath.row + 1) % 2 == 0) {return evenCell} else {
                return oddCell
        }
    
        } else if (11...13).contains(indexPath.row + 1) {return extraCell } else {
            return ordinaryCell}
     
            
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func registerCells(){
        tableView.register(UINib(nibName: String(describing: OddTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: OddTableViewCell.self))
        tableView.register(UINib(nibName: String(describing: EvenTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: EvenTableViewCell.self))
        tableView.register(UINib(nibName: String(describing: ExtraTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: ExtraTableViewCell.self))
        tableView.register(OrdinaryTableViewCell.self, forCellReuseIdentifier: String(describing: OrdinaryTableViewCell.self))
    }
    
}

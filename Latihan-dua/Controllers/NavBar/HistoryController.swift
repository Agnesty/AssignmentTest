//
//  HistoryController.swift
//  Latihan-dua
//
//  Created by Agnes Triselia Yudia on 07/07/23.
//

import UIKit

class HistoryController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let dummyData = dummyDataHistory
    
    //IBOutlet
    @IBOutlet weak var viewTopBlue: UIView! {
        didSet {
            viewTopBlue.backgroundColor = UIColor (
                red: CGFloat(0x00) / 255.0,
                green: CGFloat(0x62) / 255.0,
                blue: CGFloat(0xCD) / 255.0,
                alpha: 1.0
            )
        }
    }
    
    @IBOutlet weak var viewBottomWhite: UIView! {
        didSet {
            viewBottomWhite.roundCorners(corners: [.topLeft, .topRight], radius: CGFloat(15))
        }
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UINib(nibName: "HistoryTableViewCell", bundle: nil), forCellReuseIdentifier: "historyCell")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell") as? HistoryTableViewCell else {
            return UITableViewCell()
        }
        
        let model = dummyData[indexPath.row]
        cell.addressHistory.text = model.address
        cell.imageHistory.image = model.image
        cell.informationHistory.text = model.information
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        67
    }
    
    
    


}

//
//  HomeController.swift
//  Latihan-dua
//
//  Created by Agnes Triselia Yudia on 07/07/23.
//

import UIKit

class HomeController: UIViewController,UITableViewDelegate, UITableViewDataSource {
   
    let dummyDataLoc = dummyDataLocation
    var checkIn = true
    
    @IBOutlet weak var checkInBtn: UIButton! {
        didSet {
            checkInBtn.layer.cornerRadius = CGFloat(100)
        }
    }
    @IBAction func checkInAction(_ sender: UIButton) {
        checkIn = !checkIn
    
        if !checkIn {
            checkInBtn.backgroundColor = UIColor (
                red: CGFloat(0xF7) / 255.0,
                green: CGFloat(0xB5) / 255.0,
                blue: CGFloat(0x00) / 255.0,
                alpha: 1.0
            )
            checkInBtn.setTitle("CHECK OUT", for: .normal)
        } else {
            checkInBtn.backgroundColor = UIColor (
                red: CGFloat(0x11) / 255.0,
                green: CGFloat(0xC0) / 255.0,
                blue: CGFloat(0x4D) / 255.0,
                alpha: 1.0
            )
            checkInBtn.setTitle("CHECK IN", for: .normal)
        }
    }
    
    
    @IBOutlet weak var homeTableView: UITableView! {
        didSet {
            homeTableView.delegate = self
            homeTableView.dataSource = self
            homeTableView.register(UINib(nibName: "HistoryTableViewCell", bundle: nil), forCellReuseIdentifier: "historyCell")
        }
    }
    
    @IBOutlet weak var cardViewAbsent: UIView! {
        didSet {
            cardViewAbsent.roundCorners(corners: .allCorners, radius: CGFloat(15))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dummyDataLoc.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell") as? HistoryTableViewCell else {
            return UITableViewCell()
        }
        
        let model = dummyDataLoc[indexPath.row]
        cell.addressHistory.text = model.addressLoc
        cell.imageHistory.image = model.imageLoc
        cell.informationHistory.text = model.informationLoc
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        67
    }
}

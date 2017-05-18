//
//  SetCollectionViewController.swift
//  CollectionViewSet
//
//  Created by 楷岷 張 on 2017/5/13.
//  Copyright © 2017年 楷岷 張. All rights reserved.
//

import UIKit
import MessageUI
import CoreMotion



class SetCollectionViewController: UICollectionViewController, MFMailComposeViewControllerDelegate {

    var pedometerNumber = 0
    var colorSwitch = true
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "alertCell", for: indexPath)
            cell.backgroundColor = UIColor.white
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "colorCell", for: indexPath)
            if colorSwitch == true {
                cell.backgroundColor = UIColor.blue
            } else {
                cell.backgroundColor = UIColor.red
            }
            
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "coreMotionCell", for: indexPath) as! PedometerCollectionViewCell
            cell.pedometerLabel.text = "您的步數：\(pedometerNumber)步"
            cell.backgroundColor = UIColor.white
            return cell
        case 3:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "toSetCell", for: indexPath)
            cell.backgroundColor = UIColor.white
            return cell
        case 4:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "toMapCell", for: indexPath)
            cell.backgroundColor = UIColor.white
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "emailCell", for: indexPath)
            cell.backgroundColor = UIColor.white
            return cell
        }
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let alert = UIAlertController(title: "AlertView", message: "AlertView", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            present(alert, animated: true, completion: nil)
        case 1:
            if colorSwitch == true {
                colorSwitch = false
            } else {
                colorSwitch = true
            }
            collectionView.reloadData()
        
        case 3:
            UIApplication.shared.open(URL(string:UIApplicationOpenSettingsURLString)!)
        case 4:
            if UIApplication.shared.canOpenURL(URL(string: "comgooglemaps://")!) {
                UIApplication.shared.open(URL(string:"comgooglemaps://?saddr=&daddr=q=ALPHACamp&center=25.0522902,121.5317118&zoom=14")!)
                
            }
        default:
            if MFMailComposeViewController.canSendMail() {
                let emailTitle = "測試信件"
                var mail = MFMailComposeViewController()
                mail.mailComposeDelegate = self
                mail.setSubject(emailTitle)
                
                present(mail, animated: true, completion: nil)
            }
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == .motionShake {
            pedometerNumber += 1
            
            collectionView?.reloadData()
        }
    }
    
}

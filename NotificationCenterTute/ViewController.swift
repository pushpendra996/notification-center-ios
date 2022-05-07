//
//  ViewController.swift
//  NotificationCenterTute
//
//  Created by Pushpendra Saini on 07/05/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbTempTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(observNote(notification:)), name: NSNotification.Name("UPDATE_NOTE"), object: nil)
    }

    @objc private func observNote(notification : Notification) {
        print("Observer Called DONE")
        self.lbTempTitle.text = "Note ID : #\(notification.userInfo?["note_id"] ?? "N/A")"
    }
}


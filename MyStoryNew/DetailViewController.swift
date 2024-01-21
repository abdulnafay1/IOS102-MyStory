//
//  DetailViewController.swift
//  MyStoryNew
//
//  Created by Nafay on 1/18/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detail: Detail?
    
    
    
    @IBOutlet var detailImageView: UIImageView!
    @IBOutlet var detailNameLabel: UILabel!
    @IBOutlet var detailDescTV: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let detail = detail {
            detailImageView.image = detail.image
            detailNameLabel.text = detail.name
            detailDescTV.text = detail.desc
        }
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

//
//  ViewController.swift
//  MyStoryNew
//
//  Created by Nafay on 1/18/24.
//

import UIKit

class ViewController: UIViewController {
    
    let backstory = Detail(name: "My Backstory", image: UIImage(named: "backstory-img") ?? UIImage(), desc: "Batman's origin story features him swearing vengeance against criminals after witnessing the murder of his parents Thomas and Martha as a child, a vendetta tempered with the ideal of justice. He trains himself physically and intellectually, crafts a bat-inspired persona, and monitors the Gotham streets at night.")
    let weakness = Detail(name: "My Enemies", image: UIImage(named: "enemies-img") ?? UIImage(), desc: "Some of the most iconic and recurrent adversaries include: The Joker, The Penguin (Oswald Cobblepot), The Riddler (Edward Nygma), Catwoman (Selina Kyle), Two-Face (Harvey Dent) and Bane.")
    let lift = Detail(name: "How much can I lift?", image: UIImage(named: "lift-img") ?? UIImage(), desc: "Batman can bench press at least 1,000 pounds (about 450 kg) as part of his regular training routine. This figure is well above the world record but is used to emphasize Batman's commitment to maintaining peak physical condition through intense training and discipline.")

    
    var details: [Detail] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        details = [backstory,weakness,lift]
    }
    
    
    @IBAction func didTapDetail(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let button = sender as? UIButton,
            let detailViewController = segue.destination as? DetailViewController {

            if button.titleLabel!.text == "My Backstory" {
                detailViewController.detail = details[0]
            } else if button.titleLabel!.text == "Who are my enemies" {
                detailViewController.detail = details[1]
            } else if button.titleLabel!.text == "How much can I lift" {
                detailViewController.detail = details[2]
            } else {
                print("no button was tapped, please check your selection.")
            }
        }
    }
}
    



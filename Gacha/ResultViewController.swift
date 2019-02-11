//
//  ResultViewController.swift
//  Gacha
//
//  Created by 早川雅人 on 2019/01/31.
//  Copyright © 2019 早川雅人. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var number:Int!
    @IBOutlet var backgroundImageView:UIImageView!
    @IBOutlet var monsterImageView:UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        number = Int(arc4random_uniform(10))
        
        if number == 9{
            backgroundImageView.image = UIImage(named: "bg_gold")
        }else if number > 7{
            backgroundImageView.image = UIImage(named: "bg_red")
        }else{
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
        switch number {
        case 0:
            monsterImageView.image = UIImage(named: "monster001")
        case 1:
            monsterImageView.image = UIImage(named: "monster002")
        case 2:
            monsterImageView.image = UIImage(named: "monster003")
        case 3:
            monsterImageView.image = UIImage(named: "monster004")
        case 4:
            monsterImageView.image = UIImage(named: "monster005")
        case 5:
            monsterImageView.image = UIImage(named: "monster006")
        case 6:
            monsterImageView.image = UIImage(named: "monster007")
        case 7:
            monsterImageView.image = UIImage(named: "monster008")
        case 8:
            monsterImageView.image = UIImage(named: "monster009")
        case 9:
            monsterImageView.image = UIImage(named: "monster010")
        default:
            break
        }
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
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

//
//  ViewController.swift
//  iOS Custom TableViewCell Example
//
//  Created by Md. Kamrul Hasan on 1/16/17.
//  Copyright © 2017 MKHG Lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView.rowHeight = UITableViewAutomaticDimension
        myTableView.estimatedRowHeight = 100
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    let titles =
    [
        [
            "Diarrhoeal disease is the second leading cause of death in children under five years old. It is both preventable and treatable.",
            "Diarrhoeal disease is the second leading cause of death in children under five years old, and is responsible for killing around 760 000 children every year. Diarrhoea can last several days, and can leave the body without the water and salts that are necessary for survival. Most people who die from diarrhoea actually die from severe dehydration and fluid loss. Children who are malnourished or have impaired immunity as well as people living with HIV are most at risk of life-threatening diarrhoea."
        ],
        [
            "Each year diarrhoea kills around 760 000 children under five.",
            "Diarrhoea is defined as the passage of three or more loose or liquid stools per day (or more frequent passage than is normal for the individual). Frequent passing of formed stools is not diarrhoea, nor is the passing of loose, \"pasty\" stools by breastfed babies."
        ],
        [
            "A significant proportion of diarrhoeal disease can be prevented through safe drinking-water and adequate sanitation and hygiene.",
            "Diarrhoea is usually a symptom of an infection in the intestinal tract, which can be caused by a variety of bacterial, viral and parasitic organisms. Infection is spread through contaminated food or drinking-water, or from person-to-person as a result of poor hygiene."
        ]
        
        
    ]

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = Bundle.main.loadNibNamed("MyTableViewCell", owner: self, options: nil)?.first as! MyTableViewCell
        
        //cell.myCellTitleTextView.text = titles[indexPath.row][0]
        //cell.myCellTextView.text = titles[indexPath.row][1]
        
        let cell = Bundle.main.loadNibNamed("SimpleTableViewCell", owner: self, options: nil)?.first as! SimpleTableViewCell
        
        cell.headerLabel.text = titles[indexPath.row][0]
        cell.detailLabel.text = titles[indexPath.row][1]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelectRowAt \(indexPath.row)")
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 300
//    }
}


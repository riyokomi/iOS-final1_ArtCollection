//
//  ViewController.swift
//  Week6InclassWorkshop
//
//  Created by Sunyining Yang on 10/6/16.
//  Copyright © 2016 Sunyining Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //tableview required methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
        
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell")
        myCell?.textLabel?.text = before1912[indexPath.row]
        //myCell?.detailTextLabel?.text = "people"
        return myCell!
        }
        
        else if indexPath.section == 1{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell2")
            myCell?.textLabel?.text = in1912[indexPath.row]
            //myCell?.detailTextLabel?.text = "animal"
            return myCell!
        }
        
        else if indexPath.section == 2{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell3")
            myCell?.textLabel?.text = f191314[indexPath.row]//myCell?.textLabel?.text = ""
            //myCell?.detailTextLabel?.text = "food"
            return myCell!
        }
            
        else if indexPath.section == 3{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell4")
            myCell?.textLabel?.text = f191530[indexPath.row]
            //myCell?.detailTextLabel?.text = "activity"
            return myCell!
        }
        
        
        else{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell5")
            myCell?.textLabel?.text = after1930[indexPath.row]
            //myCell?.detailTextLabel?.text = "flags"
            return myCell!
        }


    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let myCGFloat = CGFloat(40)
        return myCGFloat
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "František Kupka Before 1912"
        } else if section == 1{
            return "František Kupka 1912"
        } else if section == 2{
            return "František Kupka 1913-1914"
        }else if section == 3{
            return "František Kupka 1915-1930"
        }else{// when wanna end the row then type else to finish the whole thing or you'll get an error
        return "František Kupka After 1930"
        }
    }
    
    //image
    
    
    let before1912 = ["Admiration (c. 1899)","Bather (1906)","Prometheus (1909)","The Musician Follot1911?","Red and Blue Disks1911?"]
    let in1912 = ["Amorpha: Fugue in Two Colors (1912)","Study with Green (c. 1912)","Study in Verticals (The Cathedral)(1912)","Composition 1912",""]
    let f191314 = ["Vertical and Diagonal Planes 1913-14","Untitled 1913","The First Step 1910-13?","",""]
    let f191530 = ["Untitled (c. 1925-30)","Untitled (1928)","Number 4 (1920)","",""]
    let after1930 = ["Replica of Fugue in Two Colors: Amorpha, 1912 (1946)","Replica (1946) of Vertical Planes(1946)","","",""]

}


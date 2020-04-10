//
//  ViewController.swift
//  JASONParsing_07April_Mahesh
//
//  Created by Mahesh on 07/04/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit
struct jsonstruct:Decodable {
    let name:String
    let capital:String
    let alpha2Code:String
    let alpha3Code:String
    let region:String
    let subregion:String
}

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    @IBOutlet weak var tableview: UITableView!
    var arrdata = [jsonstruct]()
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lblname.text = ("Name: \(arrdata[indexPath.row].name)")
        cell.lblcapital.text = ("Capital: \(arrdata[indexPath.row].capital)")
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail:DetailedViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailedViewController") as! DetailedViewController
        detail.strregion = "Region: \(arrdata[indexPath.row].region)"
        detail.strsubregion = "Subregion: \(arrdata[indexPath.row].subregion)"
        detail.stralpha2 = "Alpha2Code: \(arrdata[indexPath.row].alpha2Code)"
        detail.stralpha3 = "Alpha3Code: \(arrdata[indexPath.row].alpha3Code)"
        
        
        self.navigationController?.pushViewController(detail, animated: true)
    }
    func getData()
    {
        let url = URL(string: "https://restcountries.eu/rest/v2/all")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do{
                if error == nil
                {
                    self.arrdata = try JSONDecoder().decode([jsonstruct].self, from: data!)
                    for mainarr in self.arrdata
                    {
                        //print(mainarr.name,":",mainarr.capital,":",mainarr.alpha3Code  )
                        DispatchQueue.main.async {
                            self.tableview.reloadData()
                        }
                    }
                }
            }
            catch{
                print("Error in getting json data")
            }
        }.resume()
    }
}




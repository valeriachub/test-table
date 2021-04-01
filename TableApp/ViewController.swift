import UIKit

class UpdateValue: NSObject {
    
    @objc dynamic var count: Int = 0
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var timer: Timer?
    var updateValue = UpdateValue()
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DATA.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        
        cell.configure(updateValue: updateValue, image: UIImage(named: String(indexPath.row)))
        print("cellForRowAt")
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer =  Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.updateTimer),
                                      userInfo: nil, repeats: true)
    }
    
    @objc
    private func updateTimer() {
        
        updateValue.count += 1
        
    }
}

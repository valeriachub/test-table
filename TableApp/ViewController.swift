import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DATA.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        
        cell.cellImage.image = UIImage(named: String(indexPath.row))
        cell.cellText.text = DATA[indexPath.row].quote
        cell.cellLabel.text = DATA[indexPath.row].author
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

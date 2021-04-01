import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellText: UITextView!
    @IBOutlet weak var cellLabel: UILabel!
    
    private var observation: NSKeyValueObservation?
    
    @objc var updateValue: UpdateValue!
    
    func configure(updateValue: UpdateValue, image: UIImage?) {
        
        print("configure")
        
        cellImage.image = image
        self.updateValue = updateValue
        observation = self.updateValue.observe(\.count, options: .new) { updateValue, change in
            
            self.cellText.text = "\(updateValue.count)"
            
            print("observation")
        }
    }
    
}

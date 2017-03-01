
import UIKit
import SnapKit

final class RideViewController: UIViewController {

    let rideView = RideViewLayout.loadFromNib()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.rideView)
        self.view.backgroundColor = .blue
    }
}

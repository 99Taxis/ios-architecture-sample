import UIKit

protocol RideCompletionViewLayoutDelegate: class {
    func wantsToDismiss()
    func wantsToChangeTipsAmount(newAmount: Float)
}

final class RideCompletionViewLayout: UIView, NibLoadable {
    
    weak var delegate: RideCompletionViewLayoutDelegate?
    
    @IBAction func segmentedControlChangeHandler(_ sender: UISegmentedControl) {
//        self.delegate?.wantsToChangeTipsAmount(newAmount: sender)
    }
    
    @IBAction func dismissButtonHandler(_ sender: UIBarButtonItem) {
        self.delegate?.wantsToDismiss()
    }
}

import UIKit

protocol RideCompletionViewLayoutDelegate: class {
    func wantsToDismiss()
    func wantsToChangeTipAt(index: Int)
}

final class RideCompletionViewLayout: UIView, NibLoadable {
    
    weak var delegate: RideCompletionViewLayoutDelegate?
    
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    @IBAction func segmentedControlChangeHandler(_ sender: UISegmentedControl) {
        self.delegate?.wantsToChangeTipAt(index: sender.selectedSegmentIndex)
    }
    
    @IBAction func dismissButtonHandler(_ sender: UIBarButtonItem) {
        self.delegate?.wantsToDismiss()
    }
    
    func show(viewModel: RideCompletionViewModel) {
        for index in 0..<viewModel.count {
            let title = viewModel.getTipValueAt(index: index)
            self.segmentedControl.setTitle(title, forSegmentAt: index)
        }   
        self.descriptionLabel.text = viewModel.description
    }
}

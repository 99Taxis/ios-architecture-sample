
import UIKit
import SnapKit

// MARK: - delegate

protocol RideCompletionViewControllerDelegate: class {
    func wantsToDismiss(rideCompletionController: RideCompletionViewController)
}

// MARK: - class

final class RideCompletionViewController: UIViewController {

    let presenter: RideCompletionPresenterType
    weak var delegate: RideCompletionViewControllerDelegate?
    
    fileprivate lazy var rideView: RideCompletionViewLayout = {
        let rideView = RideCompletionViewLayout.loadFromNib()
        rideView.delegate = self
        return rideView
    }()
    
    init(presenter: RideCompletionPresenterType) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.presenter.viewDidLoad()
    }
}

// MARK: - ui setup

extension RideCompletionViewController {
    
    fileprivate func setupUI() {
        self.addSubviews()
    }
    
    private func addSubviews() {
        self.view.addSubview(self.rideView)
        self.rideView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
    }
}

// MARK: - ride

extension RideCompletionViewController: RideCompletionViewLayoutDelegate {
    
    func wantsToDismiss() {
        self.delegate?.wantsToDismiss(rideCompletionController: self)
    }
    
    func wantsToChangeTipsAmount(newAmount: Float) {
        
    }
}


extension RideCompletionViewController: RideCompletionViewType {
    func show(viewModel: RideCompletionViewModel) {
        <#code#>
    }
}

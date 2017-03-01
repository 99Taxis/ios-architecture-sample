
import UIKit
import SnapKit

// MARK: - class

final class RideCompletionViewController: UIViewController {

    fileprivate let rideView = RideProgressViewLayout.loadFromNib()
    let presenter: RideCompletionPresenterType
    
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

// MARK: - ride view

import UIKit

final class RideCoordinator {
    
    private unowned let window: UIWindow
    var currentViewController: UIViewController?
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let repository = RideRepository()
        let presenter = RideProgressPresenter(repository: repository)
        let rideProgressViewController = RideProgressViewController(presenter: presenter)
        rideProgressViewController.delegate = self
        presenter.view = rideProgressViewController
        
        self.currentViewController = rideProgressViewController
        self.window.rootViewController = rideProgressViewController
        self.window.makeKeyAndVisible()
    }
}

extension RideCoordinator: RideProgressViewControllerDelegate {
    func wantsToShowRideCompletion(rideProgressController: RideProgressViewController) {
        let repository = RideRepository()
        let presenter = RideCompletionPresenter(repository: repository)
        let rideCompletionViewController = RideCompletionViewController(presenter: presenter)
        rideCompletionViewController.delegate = self
        presenter.view = rideCompletionViewController
        
        self.currentViewController = rideCompletionViewController
        rideProgressController.present(rideCompletionViewController, animated: true, completion: nil)
    }
}

extension RideCoordinator: RideCompletionViewControllerDelegate {
    func wantsToDismiss(rideCompletionController: RideCompletionViewController) {
        self.currentViewController = rideCompletionController.presentingViewController
        rideCompletionController.dismiss(animated: true, completion: nil)
    }
}

import Foundation

class RidePresenter: RidePresenterType {
    
    let repository: RideRepositoryType
    
    init(repository: RideRepositoryType) {
        self.repository = repository
    }
    
    func viewDidLoad() {
        self.listenToRideUpdates()
    }
}

extension RidePresenter {
    
    fileprivate func listenToRideUpdates() {
        
    }
}

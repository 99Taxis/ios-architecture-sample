import Foundation

struct RideProgressViewModel: Equatable {
    
    let progress: Float
    
    fileprivate var isFinished: Bool {
        return self.progress >= 1
    }
    
    var description: String {
        return self.isFinished ? "Corrida Finalizada!" : "Finalizando Corrida"
    }
    var tipButtonHidden: Bool {
        return !self.isFinished
    }
    
    init(progress: Float = 0, tipButtonHidden: Bool = true) {
        self.progress = progress
    }
}

extension RideProgressViewModel {
    
    func viewModelWith(progress: Float) -> RideProgressViewModel {
        return RideProgressViewModel(progress: progress)
    }
}

func ==(lhs: RideProgressViewModel, rhs: RideProgressViewModel) -> Bool {
    return lhs.progress == rhs.progress
}

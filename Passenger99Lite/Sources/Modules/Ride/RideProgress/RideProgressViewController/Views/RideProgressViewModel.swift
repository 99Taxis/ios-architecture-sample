
import Foundation

struct RideProgressViewModel: Equatable {
    
    let progress: Float
    let tipButtonHidden: Bool
    let description: String
    
    init(progress: Float, hiddenTipButton: Bool, description: String) {
        self.progress = progress
        self.tipButtonHidden = hiddenTipButton
        self.description = description
    }
}

func ==(lhs: RideProgressViewModel, rhs: RideProgressViewModel) -> Bool {
    return lhs.progress == rhs.progress
}

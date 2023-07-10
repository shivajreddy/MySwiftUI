/// Must topics to cover in Initialization
/// Setting Initial Values for Stored Properties
/// Customizing Initialization
/// Default Initializers
/// Initializer Delegation for Value Types
/// Class Inheritance and Initialization
/// Failable Initializers
/// Required Initializers
/// Setting a Default Property Value with a Closure or Function



class SurveyQuestion {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let beetsQuestion = SurveyQuestion(text: "How about beets?")
beetsQuestion.ask() // "How about beets?"
beetsQuestion.response = "I also like beets. (But not with cheese.)"

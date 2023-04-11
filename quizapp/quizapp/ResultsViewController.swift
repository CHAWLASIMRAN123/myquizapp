import UIKit

class ResultsViewController: UIViewController {
    
    var responses: [Answer]
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
           super.viewDidLoad()
           calculatePersonalityResult()
           
           navigationItem.hidesBackButton = true
           

           // Do any additional setup after loading the view.
       }
       
    @IBOutlet var resultDefinitionLabel: UILabel!
    @IBOutlet var resultAnswerLabel: UILabel!
    
    
    func calculatePersonalityResult(){
        
        
        
           let frequencyOfAnswers = responses.reduce(into: [:]){
               (count, answer) in
               count[answer.type, default: 0] += 1
           }
           
           let frequentAnswersSorted = frequencyOfAnswers.sorted(by: {
               (pair1, pair2) in
               return pair1.value > pair2.value
           })
           
           let mostCommonAnswer = frequentAnswersSorted.first!.key
           
           resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
           resultDefinitionLabel.text = mostCommonAnswer.definition
   }

    
   }

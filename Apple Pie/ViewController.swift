//
//  ViewController.swift
//  Apple Pie
//
//  Created by Robin on 3/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    
    @IBOutlet var correctWordLabel: UILabel!
    
    @IBOutlet var treeImageView: UIImageView!
    
    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.configuration!.title!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }

    var currentGame: Game!

    struct Game {
        var word: String
        var incorrectMovesRemaining: Int
        var guessedLetters: [Character]

        mutating func playerGuessed(letter: Character) {
          guessedLetters.append(letter)
          if !word.contains(letter) {
            incorrectMovesRemaining -= 1
          }
        }
    }

    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
        updateUI()
    }

    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }

}


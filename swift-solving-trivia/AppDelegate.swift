//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain




class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    var stateAndCapital = [String : String]()
    
    func createDictionary() -> [String : String]
    {
        let stateArray = ["Alabama",
                          "Alaska",
                          "Arizona",
                          "Arkansas",
                          "California",
                          "Colorado",
                          "Connecticut",
                          "Delaware",
                          "Florida",
                          "Georgia",
                          "Hawaii",
                          "Idaho",
                          "Illinois",
                          "Indiana",
                          "Iowa",
                          "Kansas",
                          "Kentucky",
                          "Louisiana",
                          "Maine",
                          "Maryland",
                          "Massachusetts",
                          "Michigan",
                          "Minnesota",
                          "Mississippi",
                          "Missouri",
                          "Montana",
                          "Nebraska",
                          "Nevada",
                          "New Hampshire",
                          "New Jersey",
                          "New Mexico",
                          "New York",
                          "North Carolina",
                          "North Dakota",
                          "Ohio",
                          "Oklahoma",
                          "Oregon",
                          "Pennsylvania",
                          "Rhode Island",
                          "South Carolina",
                          "South Dakota",
                          "Tennessee",
                          "Texas",
                          "Utah",
                          "Vermont",
                          "Virginia",
                          "Washington",
                          "West Virginia",
                          "Wisconsin",
                          "Wyoming"
        ]
        let capital = ["Montgomery",
                       "Juneau",
                       "Phoenix",
                       "Little Rock",
                       "Sacramento",
                       "Denver",
                       "Hartford",
                       "Dover",
                       "Tallahassee",
                       "Atlanta",
                       "Honolulu",
                       "Boise",
                       "Springfield",
                       "Indianapolis",
                       "Des Moines",
                       "Topeka",
                       "Frankfort",
                       "Baton Rouge",
                       "Augusta",
                       "Annapolis",
                       "Boston",
                       "Lansing",
                       "St. Paul",
                       "Jackson",
                       "Jefferson City",
                       "Helena",
                       "Lincoln",
                       "Carson City",
                       "Concord",
                       "Trenton",
                       "Santa Fe",
                       "Albany",
                       "Raleigh",
                       "Bismarck",
                       "Columbus",
                       "Oklahoma City",
                       "Salem",
                       "Harrisburg",
                       "Providence",
                       "Columbia",
                       "Pierre",
                       "Nashville",
                       "Austin",
                       "Salt Lake City",
                       "Montpelier",
                       "Richmond",
                       "Olympia",
                       "Charleston",
                       "Madison",
                       "Cheyenne"
        ]
        for (index, state) in stateArray.enumerate()
        {
            stateAndCapital[state] = capital[index]
        }
        print(stateAndCapital)
        return stateAndCapital
    }
    
    
    func solveTrivia(stateAndCapital: [String : String]) -> String
    {
        //declared the strings I want to place into state and capital into!
        var stateString: String = ""
        var capitalString: String = ""
        var counter: Int = 0
        var correctState: String = ""
        var stateCharacters: [Character] = []
        
        //iterate over the content of the dictionary and put them into string variables
        for (state, capital) in stateAndCapital
        {
            
            var stateString = state
            var capitalString = capital
            
            print("State - \(state)")
            print("Capital - \(capital)")
            
            //inside the loop made sure each state and capital was lowercase
            stateString = stateString.lowercaseString
            capitalString = capitalString.lowercaseString
            
            //inside the loop made sure each of the state and the capital did not have a space
            stateString = stateString.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
            capitalString = capitalString.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
            
            //remove the punctuation that each of the states or capitals may contain
            let punctuation = [".", ",", ";", "'"]
            
            for (index, punc) in punctuation.enumerate()
            {
                
                stateString = stateString.stringByReplacingOccurrencesOfString(punc, withString: "")
                capitalString = capitalString.stringByReplacingOccurrencesOfString(punc, withString: "")
            }
            //now convert each of the strings in the capital and state into separate arrays, so you can have a comparison take place
            stateCharacters = Array(stateString.characters)
            
            print(stateCharacters)
            
            let capitalCharacters = Array(capitalString.characters)
            
            print(capitalCharacters)
            
            for (char) in stateCharacters
            {
                var otherElement: Character = " "
                
                for (element) in capitalCharacters
                {
                    otherElement = element
                    print("comparisn: \(char) = \(otherElement)")
                
                
                if char == otherElement
                {
                    counter += 1
                    print("char == element")
                }
                
                else
                {
                    counter += 0
                    print("char not equal to element")
                }
                }
                //            }
                print("count: \(char) = \(otherElement) \(counter)")
                
            }
            //            }
            //            if counter == 0
            //            {
            //
            //                for char in stateCharacters
            //                {
            //                    correctState = correctState + String(char)
            //                    print("\(correctState)")
            //                }
            
            //                print(correctState)
            //correctState = correctState.append(stateCharacters)
            //                correctState = (stateCharacters).joinWithSeparator("")
            //                return correctState
            //            }
            
            if counter == 0
            {
                correctState = state
                print("correct state is+++++++++\(correctState)")
            }
            counter = 0
        }
        
//        if counter == 0
//        {
//            
//            for char in stateCharacters
//            {
//                correctState = correctState + String(char)
//                print("\(correctState)")
//            }
//        }
        return correctState
    }
}




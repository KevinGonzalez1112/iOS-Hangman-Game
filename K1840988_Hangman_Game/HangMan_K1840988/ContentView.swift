//
//  ContentView.swift
//  HangMan_K1840988
//
//  Created by Kevin Gonzalez on 22/02/2022.
//

import SwiftUI

// Setting a list of words for the game
var playableWords: [String] = ["i,o,s",
                               "c,o,u,r,s,e",
                               "w,o,r,k",
                               "h,a,n,g",
                               "m,a,n",
                               "g,a,m,e"]

// Used to help grab a random word from playable words array
// Gets a number between 0 and the max value of the array
var count = Int.random(in: 0...(playableWords.count - 1))

// Stores the images to be used in the game
var imageArray: [String] = ["fault-zero",
                            "fault-one",
                            "fault-two",
                            "fault-three",
                            "fault-four",
                            "fault-five",
                            "fault-six",
                            "fault-seven",
                            "game-winner"]

// Creating a custom button component to use for all app buttons
struct CustomButtonModifier: ViewModifier
{
    func body(content: Content) -> some View
    {
        content
            .font(.title2)
            .padding(.maximum(0, 6))
            .foregroundColor(.black)
            .clipShape(RoundedRectangle(cornerRadius: 100))
    }
}

extension View
{
    func customButton() -> some View
    {
        modifier(CustomButtonModifier())
    }
}

struct ContentView: View
{
    // Splits the word grabbed from array into indvidual letters
    @State var wordInPlay = playableWords[(count)]
        .components(separatedBy: ",")
    
    // Tracks the number of incorrect guesses the user has made
    @State var faultCounter = 0
    
    // Tracks the number of correct guesses the user has made
    @State var correctCounter = 0
    
    // Helps disable each button once it has been clicked once
    @State var buttonA = 0
    @State var buttonB = 0
    @State var buttonC = 0
    @State var buttonD = 0
    @State var buttonE = 0
    @State var buttonF = 0
    @State var buttonG = 0
    @State var buttonH = 0
    @State var buttonI = 0
    @State var buttonJ = 0
    @State var buttonK = 0
    @State var buttonL = 0
    @State var buttonM = 0
    @State var buttonN = 0
    @State var buttonO = 0
    @State var buttonP = 0
    @State var buttonQ = 0
    @State var buttonR = 0
    @State var buttonS = 0
    @State var buttonT = 0
    @State var buttonU = 0
    @State var buttonV = 0
    @State var buttonW = 0
    @State var buttonX = 0
    @State var buttonY = 0
    @State var buttonZ = 0
    
    // Helps hide letters before a correct guess
    @State var aVisible = "false"
    @State var bVisible = "false"
    @State var cVisible = "false"
    @State var dVisible = "false"
    @State var eVisible = "false"
    @State var fVisible = "false"
    @State var gVisible = "false"
    @State var hVisible = "false"
    @State var iVisible = "false"
    @State var jVisible = "false"
    @State var kVisible = "false"
    @State var lVisible = "false"
    @State var mVisible = "false"
    @State var nVisible = "false"
    @State var oVisible = "false"
    @State var pVisible = "false"
    @State var qVisible = "false"
    @State var rVisible = "false"
    @State var sVisible = "false"
    @State var tVisible = "false"
    @State var uVisible = "false"
    @State var vVisible = "false"
    @State var wVisible = "false"
    @State var xVisible = "false"
    @State var yVisible = "false"
    @State var zVisible = "false"
    
    var body: some View
    {
        VStack
        {
            Text("HANGMAN GAME!")
                .padding()
                .font(.title)
            
            // Displays an image based off the number of faults user has made
            Image(imageArray[faultCounter])
                .resizable()
                .scaledToFit()
            
            Spacer()
                .frame(height: 30)
            
            HStack
            {
                ForEach(wordInPlay, id: \.self)
                {
                    wordInPlay in HStack
                    {
                        if (wordInPlay == "a" && aVisible == "true")
                        {
                            Text("A")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "b" && bVisible == "true")
                        {
                            Text("B")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "c" && cVisible == "true")
                        {
                            Text("C")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "d" && dVisible == "true")
                        {
                            Text("D")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "e" && eVisible == "true")
                        {
                            Text("E")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "f" && fVisible == "true")
                        {
                            Text("F")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "g" && gVisible == "true")
                        {
                            Text("G")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "h" && hVisible == "true")
                        {
                            Text("H")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "i" && iVisible == "true")
                        {
                            Text("I")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "j" && jVisible == "true")
                        {
                            Text("J")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "k" && kVisible == "true")
                        {
                            Text("K")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "l" && lVisible == "true")
                        {
                            Text("L")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "m" && mVisible == "true")
                        {
                            Text("M")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "n" && nVisible == "true")
                        {
                            Text("N")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "o" && oVisible == "true")
                        {
                            Text("O")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "p" && pVisible == "true")
                        {
                            Text("P")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "q" && qVisible == "true")
                        {
                            Text("Q")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "r" && rVisible == "true")
                        {
                            Text("R")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "s" && sVisible == "true")
                        {
                            Text("S")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "t" && tVisible == "true")
                        {
                            Text("T")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "u" && uVisible == "true")
                        {
                            Text("U")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "u" && vVisible == "true")
                        {
                            Text("V")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "w" && wVisible == "true")
                        {
                            Text("W")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "x" && xVisible == "true")
                        {
                            Text("X")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "y" && yVisible == "true")
                        {
                            Text("Y")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else if (wordInPlay == "z" && zVisible == "true")
                        {
                            Text("Z")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                        else {
                            Text("_")
                                .padding(.maximum(0, 6))
                                .font(.title)
                        }
                    }
                }
            }
            
            Spacer()
                .frame(height: 30)
            
            HStack
            {
                Button(action:
                {
                    if wordInPlay.contains("a")
                    {
                        // Set a to visible
                        // So it replaces _ in View
                        aVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonA = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonA = 1
                    }
                })
                {
                    Text("A")
                }
                .customButton()
                .background(buttonA == 0 ? Color.green : Color.blue)
                .disabled(buttonA == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("b")
                    {
                        // Set b to visible
                        // So it replaces _ in View
                        bVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonB = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonB = 1
                    }
                })
                {
                    Text("B")
                }
                .customButton()
                .background(buttonB == 0 ? Color.green : Color.blue)
                .disabled(buttonB == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("c")
                    {
                        // Set c to visible
                        // So it replaces _ in View
                        cVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonC = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonC = 1
                    }
                })
                {
                    Text("C")
                }
                .customButton()
                .background(buttonC == 0 ? Color.green : Color.blue)
                .disabled(buttonC == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("d")
                    {
                        // Set d to visible
                        // So it replaces _ in View
                        dVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonD = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonD = 1
                    }
                })
                {
                    Text("D")
                }
                .customButton()
                .background(buttonD == 0 ? Color.green : Color.blue)
                .disabled(buttonD == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("e")
                    {
                        // Set e to visible
                        // So it replaces _ in View
                        eVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonE = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonE = 1
                    }
                })
                {
                    Text("E")
                }
                .customButton()
                .background(buttonE == 0 ? Color.green : Color.blue)
                .disabled(buttonE == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("f")
                    {
                        // Set f to visible
                        // So it replaces _ in View
                        fVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonF = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonF = 1
                    }
                })
                {
                    Text("F")
                }
                .customButton()
                .background(buttonF == 0 ? Color.green : Color.blue)
                .disabled(buttonF == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("g")
                    {
                        // Set g to visible
                        // So it replaces _ in View
                        gVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonG = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonG = 1
                    }
                })
                {
                    Text("G")
                }
                .customButton()
                .background(buttonG == 0 ? Color.green : Color.blue)
                .disabled(buttonG == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("h")
                    {
                        // Set h to visible
                        // So it replaces _ in View
                        hVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonH = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonH = 1
                    }
                })
                {
                    Text("H")
                }
                .customButton()
                .background(buttonH == 0 ? Color.green : Color.blue)
                .disabled(buttonH == 1)
            }
            
            HStack
            {
                Button(action:
                {
                    if wordInPlay.contains("i")
                    {
                        // Set i to visible
                        // So it replaces _ in View
                        iVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonI = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonI = 1
                    }
                })
                {
                    Text("I")
                }
                .customButton()
                .background(buttonI == 0 ? Color.green : Color.blue)
                .disabled(buttonI == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("j")
                    {
                        // Set j to visible
                        // So it replaces _ in View
                        jVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonJ = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonJ = 1
                    }
                })
                {
                    Text("J")
                }
                .customButton()
                .background(buttonJ == 0 ? Color.green : Color.blue)
                .disabled(buttonJ == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("k")
                    {
                        // Set k to visible
                        // So it replaces _ in View
                        kVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonK = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonK = 1
                    }
                })
                {
                    Text("K")
                }
                .customButton()
                .background(buttonK == 0 ? Color.green : Color.blue)
                .disabled(buttonK == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("l")
                    {
                        // Set l to visible
                        // So it replaces _ in View
                        lVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonL = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonL = 1
                    }
                })
                {
                    Text("L")
                }
                .customButton()
                .background(buttonL == 0 ? Color.green : Color.blue)
                .disabled(buttonL == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("m")
                    {
                        // Set m to visible
                        // So it replaces _ in View
                        mVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonM = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonM = 1
                    }
                })
                {
                    Text("M")
                }
                .customButton()
                .background(buttonM == 0 ? Color.green : Color.blue)
                .disabled(buttonM == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("n")
                    {
                        // Set n to visible
                        // So it replaces _ in View
                        nVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonN = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonN = 1
                    }
                })
                {
                    Text("N")
                }
                .customButton()
                .background(buttonN == 0 ? Color.green : Color.blue)
                .disabled(buttonN == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("o")
                    {
                        // Set o to visible
                        // So it replaces _ in View
                        oVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonO = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonO = 1
                    }
                })
                {
                    Text("O")
                }
                .customButton()
                .background(buttonO == 0 ? Color.green : Color.blue)
                .disabled(buttonO == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("p")
                    {
                        // Set p to visible
                        // So it replaces _ in View
                        pVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonP = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonP = 1
                    }
                })
                {
                    Text("P")
                }
                .customButton()
                .background(buttonP == 0 ? Color.green : Color.blue)
                .disabled(buttonP == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("q")
                    {
                        // Set q to visible
                        // So it replaces _ in View
                        qVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonQ = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonQ = 1
                    }
                })
                {
                    Text("Q")
                }
                .customButton()
                .background(buttonQ == 0 ? Color.green : Color.blue)
                .disabled(buttonQ == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("r")
                    {
                        // Set r to visible
                        // So it replaces _ in View
                        rVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonR = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonR = 1
                    }
                })
                {
                    Text("R")
                }
                .customButton()
                .background(buttonR == 0 ? Color.green : Color.blue)
                .disabled(buttonR == 1)
            }
            
            HStack
            {
                Button(action:
                {
                    if wordInPlay.contains("s")
                    {
                        // Set s to visible
                        // So it replaces _ in View
                        sVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonS = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonS = 1
                    }
                })
                {
                    Text("S")
                }
                .customButton()
                .background(buttonS == 0 ? Color.green : Color.blue)
                .disabled(buttonS == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("t")
                    {
                        // Set t to visible
                        // So it replaces _ in View
                        tVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonT = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonT = 1
                    }
                })
                {
                    Text("T")
                }
                .customButton()
                .background(buttonT == 0 ? Color.green : Color.blue)
                .disabled(buttonT == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("u")
                    {
                        // Set u to visible
                        // So it replaces _ in View
                        uVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonU = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonU = 1
                    }
                })
                {
                    Text("U")
                }
                .customButton()
                .background(buttonU == 0 ? Color.green : Color.blue)
                .disabled(buttonU == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("v")
                    {
                        // Set v to visible
                        // So it replaces _ in View
                        vVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonV = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonV = 1
                    }
                })
                {
                    Text("V")
                }
                .customButton()
                .background(buttonV == 0 ? Color.green : Color.blue)
                .disabled(buttonV == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("w")
                    {
                        // Set w to visible
                        // So it replaces _ in View
                        wVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonW = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonW = 1
                    }
                })
                {
                    Text("W")
                }
                .customButton()
                .background(buttonW == 0 ? Color.green : Color.blue)
                .disabled(buttonW == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("x")
                    {
                        // Set x to visible
                        // So it replaces _ in View
                        xVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonX = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonX = 1
                    }
                })
                {
                    Text("X")
                }
                .customButton()
                .background(buttonX == 0 ? Color.green : Color.blue)
                .disabled(buttonX == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("y")
                    {
                        // Set h to visible
                        // So it replaces _ in View
                        yVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonY = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonY = 1
                    }
                })
                {
                    Text("Y")
                }
                .customButton()
                .background(buttonY == 0 ? Color.green : Color.blue)
                .disabled(buttonY == 1)
                
                Button(action:
                {
                    if wordInPlay.contains("z")
                    {
                        // Set z to visible
                        // So it replaces _ in View
                        zVisible = "true";
                        
                        // Add one to correct answer
                        // Helps to trigger win condition
                        correctCounter = correctCounter + 1
                        
                        if correctCounter == (wordInPlay.count)
                        {
                            faultCounter = 8
                        }
                        
                        // Update button state so it will no longer work
                        buttonZ = 1
                    }
                    else
                    {
                        // Add one to fault counter and update image
                        if faultCounter < 7
                        {
                            faultCounter = faultCounter + 1
                        }
                        
                        // Update button state so it will no longer work
                        buttonZ = 1
                    }
                })
                {
                    Text("Z")
                }
                .customButton()
                .background(buttonZ == 0 ? Color.green : Color.blue)
                .disabled(buttonZ == 1)
            }
            
            Spacer()
                .frame(height: 30)
            
            HStack
            {
                Button(action:
                {
                    // Grab new random word from the word list
                    // And split into individual letters
                    wordInPlay = playableWords[
                        (Int.random(in: 0...(playableWords.count - 1)))
                    ].components(separatedBy: ",")
                    
                    // Reset fault and correct answer counters
                    faultCounter = 0
                    correctCounter = 0
                    
                    // Reset butrtons so they will all be clickable again
                    buttonA = 0
                    buttonB = 0
                    buttonC = 0
                    buttonD = 0
                    buttonE = 0
                    buttonF = 0
                    buttonG = 0
                    buttonH = 0
                    buttonI = 0
                    buttonJ = 0
                    buttonK = 0
                    buttonL = 0
                    buttonM = 0
                    buttonN = 0
                    buttonO = 0
                    buttonP = 0
                    buttonQ = 0
                    buttonR = 0
                    buttonS = 0
                    buttonT = 0
                    buttonU = 0
                    buttonV = 0
                    buttonW = 0
                    buttonX = 0
                    buttonY = 0
                    buttonZ = 0
                    
                    // Reset letters so they will appear as _ again
                    aVisible = "false"
                    bVisible = "false"
                    cVisible = "false"
                    dVisible = "false"
                    eVisible = "false"
                    fVisible = "false"
                    gVisible = "false"
                    hVisible = "false"
                    iVisible = "false"
                    jVisible = "false"
                    kVisible = "false"
                    lVisible = "false"
                    mVisible = "false"
                    nVisible = "false"
                    oVisible = "false"
                    pVisible = "false"
                    qVisible = "false"
                    rVisible = "false"
                    sVisible = "false"
                    tVisible = "false"
                    uVisible = "false"
                    vVisible = "false"
                    wVisible = "false"
                    xVisible = "false"
                    yVisible = "false"
                    zVisible = "false"
                })
                {
                    Text("RESTART GAME")
                }
                .customButton()
                .background(Color.green)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}

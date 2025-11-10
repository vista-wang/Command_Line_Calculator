//
//  main.swift
//  Command_Line_Calculator
//
//  Created by Ethan Wang    on 11/10/25.
//

import Foundation
//import Cocoa

func command_switch(command:String){
    switch command {
    case "quit":
        break
    default:
        main()
    }
}

func main(){
    print("calculator", terminator:">")
    let command:String! = readLine()
    print("\(command ?? "incorrect command")")
    /*switch command {
        case "quit":
            break
        default:
            main()
    }*/
    command_switch(command:command)
}

let version = "InDev"
print("Welcome to use Command Line Calculator(version \(version)! \n")
main()


//
//  main.swift
//  Command_Line_Calculator
//
//  Created by Ethan Wang    on 11/10/25.
//

import Foundation
//import Cocoa

func command_switch(command:String, a:String, b:String){
    if Int(a) != nil{
        
    }
    switch command {
        case "set":
            let ai:Int! = Int(a)
            set(a:ai, b:b)
        case "quit":
            break
        default:
            main()
    }
}

func main(){
    print("calculator", terminator:">")
    let input:String! = readLine()
    /*print("\(command ?? "incorrect command")")
    switch command {
        case "quit":
            break
        default:
            main()
    }*/
    let part = input.components(separatedBy: " ")
    if part.count == 3{
        let command = part[0]
        let a = part[1]
        let b = part[2]
        command_switch(command:command, a:a, b:b)
    }else if part.count == 2{
        let command = part[1]
        if command == "PRT"{
            prt(prt:part[2])
        }else{
            print("less input")
        }
    }else{
        print("incorrect input")
    }
}

let version = "InDev"
//let command:String
//let a:String
//let b:String
print("Welcome to use Command Line Calculator(version \(version)）! \n")
main()


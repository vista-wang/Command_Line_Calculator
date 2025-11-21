//
//  main.swift
//  Command_Line_Calculator
//
//  Created by Ethan Wang    on 11/10/25.
//

import Foundation
//import Cocoa

func format_input(_ input:String) -> Int{
    if Int(input) != nil{
        return Int(input)
    }else if vars[input] != nil{
        return vars[input]
    }else{
        print("error:02 未定义的变量")
    }
}


func command_switch(command:String, af:String, b:String){
    guard let a = format_input(af) else { return }
    switch command {
    case "set":
        set(a:a, b:b)
    case "add":
        add(a:a, b:b)
    case "min":
        min(a:a, b:b)
    case "tim":
        tim(a:a, b:b)
    case "div":
        div(a:a, b:b)
    case "pow":
        powp(a:a, b:b)
    case "rot":
        rot(a:a, b:b)
    //case "quit":
        //break
    default:
        main()
    }
}

func main(){
    print("calculator", terminator:">")
    let input:String! = readLine()
    let part = input.components(separatedBy: " ")
    if part.count == 3{
        let command:String! = part[0]
        let af:String! = part[1]
        let bf:String! = part[2]
        command_switch(command:command, af:af, b:bf)
    }else if part.count == 2{
        let command = part[0]
        if command == "prt"{
            prt(prt:part[1])
        }else{
            print("less input")
        }
        main()
    }else{
        print("incorrect input")
        main()
    }
}

let version = "InDev"
var vars:[String:Int] = ["test":114514]
//var a:Int!
//var b:String!
print("Welcome to use Command Line Calculator(version \(version)）! \n")
main()


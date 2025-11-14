//
//  funcs.swift
//  Command_Line_Calculator
//
//  Created by Ethan Wang    on 11/13/25.
//

func prt(prt:String){
    if vars[prt] == nil{
        print("error:02")
    }else{
        print(String(vars[prt]!))
    }
    main()
}

func set(a:Int!, b:String!){
    vars[b] = a
    main()

}

func add(a:Int, b:String){
    if vars[b] == nil{
        print("error:02")
    }else{
        var z:Int! = vars[b]
        z = z + a
        vars[b] = z
    }
    main()
}

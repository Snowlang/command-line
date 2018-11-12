//
//  main.swift
//  CommandLineHop
//
//  Created by Iman Zarrabian on 13/09/2018.
//  Copyright © 2018 One More Thing Studio. All rights reserved.
//

import Foundation
import Commander
import Hop

func evaluateScriptAndPrintResult(script: String, messenger: Messenger) {
    let filteredScript = script.replacingOccurrences(of: "\r\n", with: "\n") + "\n"

    // Setup runtime session
    let session = Hop.Session(isDebug: true,
                              messenger: messenger,
                              getScriptForModule: nil)

    do {
        // Run script
        try session.run(script: filteredScript)

    } catch let error {
        if let printableError = error as? ProgramError {

        } else {
           print("Unkown script error")
        }
    }
}

let main = command { (script: String) in
    let messenger = Messenger()
    messenger.subscribe(to: .stdout, handler: { message in
        if let result = message.data as? String {
            print("Stout output: \n" + result)
        }
    })
    print("System output: \n")
    evaluateScriptAndPrintResult(script: script, messenger: messenger)
}

main.run()

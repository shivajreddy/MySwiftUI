//
//  ToDoApp.swift
//  ToDo
//
//  Created by Shiva on 6/8/23.
//

import SwiftUI
import FirebaseCore

// Entry point into the app
@main
struct ToDoApp: App {
	init(){
		FirebaseApp.configure()
		print("✅ success")
	}
    var body: some Scene {
        WindowGroup {
				MainView()
        }
    }
}

//  QS{{cookiecutter.short_name}}.swift
//  QS{{cookiecutter.short_name}}
//
//  Created by {{cookiecutter.author}}

//
//  QS{{cookiecutter.short_name}}.swift
//  QS{{cookiecutter.short_name}}
//
//  Created by Nathan Henrie on 2022-03-03.
//  Copyright © 2022 Quicksilver. All rights reserved.
//

//import Foundation
//import Cocoa

class QS{{cookiecutter.short_name}}SwiftAction : QSActionProvider {
    @objc func performSwiftActionOnObject(_ dObject: QSObject) -> QSObject {
        print("Performing a Swift action with direct obj only")
        return QSObject(string: "here it comes!")
    }

    @objc func performSwiftActionOnObject(_ dObject: QSObject, using iObject: QSObject) -> QSObject {
        print("Performing a Swift action with direct and indirect objects")
        return QSObject(string: "there it went!")
    }

    // Please see the below method in QS{{cookiecutter.short_name}}Action.m
    // - (QSObject *)performActionInSwiftFromObjC:(QSObject *)dObject
    @objc func performSwiftActionFromObjC(_ dObject: QSObject) -> QSObject {
        print("Performing a Swift action from ObjC with direct obj only")
        return QSObject(string: "here it comes!")
    }

    // Please see the below method in QS{{cookiecutter.short_name}}Action.m
    // - (QSObject *)performActionInSwiftFromObjC:(QSObject *)dObject using:(QSObject *)iObject
    @objc func performSwiftActionFromObjC(_ dObject: QSObject, using iObject: QSObject) -> QSObject {
        print("Performing a Swift action from ObjC with direct and indirect objects")
        return QSObject(string: "there it went!")
    }

    @objc func validActionsForDirectObject(_ dObject: QSObject, indirectObject iObject: QSObject) -> [String] {
        print("Just validating some actions")
        var newActions = [String]()
        newActions.append("DoSomethingInSwiftAction")
        return newActions
    }

    @objc func validIndirectObjectsForAction(_ action: String, directObject dObject: QSObject) -> [QSObject] {
        print("Just validating some indirecet objects here")
        if action == "DoSomethingInSwiftUsingAction" {
            print("Yup, that's the name!")

            var opts = [QSObject]()
            opts.append(QSObject(string: "First option!"))
            opts.append(QSObject(string: "Second option!"))
            return opts
        }
        return [QSObject(string: "You're outta options!")]
    }
}

    // Please see the below method in QS{{cookiecutter.short_name}}Action.m
class QS{{cookiecutter.short_name}}SwiftSource : QSObjectSource {
//    - (BOOL)indexIsValidFromDate:(NSDate *)indexDate forEntry:(NSDictionary *)theEntry
    @objc func indexIsValidFromDate(_ indexDate: NSDate, forEntry theEntry: NSDictionary) -> Bool {
        print("checking that index");
        return false;
    }

    // create and return an array of QSObjects to add to the catalog
    //    - (NSArray *) objectsForEntry:(NSDictionary *)theEntry
    @objc func objectsForEntry(_ theEntry: NSDictionary) -> [QSObject] {
        print("here sourcing stuff");

//        var newObject = QSObject(type: "QS{{cookiecutter.short_name}}Test", value: <#T##Any!#>, name: "Test {{cookiecutter.short_name}} Swifty Object")
        let newObject = QSObject(type: "QS{{cookiecutter.short_name}}Type", value: "this is my value!", name: "Test {{cookiecutter.short_name}} Swifty Object")!
        let anotherObject = QS{{cookiecutter.short_name}}Type        
//        newObject = [QSObject makeObjectWithIdentifier:@"QS{{cookiecutter.short_name}}Test"];
//        [newObject setName:@"Test {{cookiecutter.short_name}} Object"];
//        [newObject setObject:@"data" forType:QS{{cookiecutter.short_name}}Type];
//        [newObject setPrimaryType:QS{{cookiecutter.short_name}}Type];
//        [objects addObject:newObject];

        return [newObject]
    }

    /*
     // an icon that is either already in memory or easy to load
     - (void)setQuickIconForObject:(QSObject *)object
     {
     [object setIcon:nil];
     }

     // a nicer or more "correct" icon that takes a while to create or obtain
     - (BOOL)loadIconForObject:(QSObject *)object
     {
     id data=[object objectForType:QS{{cookiecutter.short_name}}Type];
     [object setIcon:nil];
     return YES;
     }
     */
}

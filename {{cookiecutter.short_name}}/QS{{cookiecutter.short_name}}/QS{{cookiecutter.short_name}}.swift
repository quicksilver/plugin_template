//  QS{{cookiecutter.short_name}}.swift
//  QS{{cookiecutter.short_name}}
//
//  Created by {{cookiecutter.author}}

@objc class QS{{cookiecutter.short_name}}Swift : QSActionProvider {
    @objc func doSomethingFromObjC(_ dObject: QSObject) -> QSObject? {
        print("Delete this logging statement 1!")
        // return QSObject(string: "here it comes!")
        return nil
    }

    @objc func doSomethingFromObjC(_ dObject: QSObject, using iObject: QSObject) -> QSObject? {
        print("Delete this logging statement 2!")
        // return QSObject(string: "there it went!")
        return nil
    }
}

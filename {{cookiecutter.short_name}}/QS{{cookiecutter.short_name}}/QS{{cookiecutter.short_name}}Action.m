//
//  {{cookiecutter.short_name}} Plug-in
//  QS{{cookiecutter.short_name}}Action.m
//
//  Created by {{cookiecutter.author}}
//

#import "QS{{cookiecutter.short_name}}.h"
#import "QS{{cookiecutter.short_name}}Action.h"
#import <QS{{cookiecutter.short_name}}-Swift.h>

@implementation QS{{cookiecutter.short_name}}Action

#pragma mark Action Methods

// do something with the selected object(s) from the first pane
- (QSObject *)performActionOnObject:(QSObject *)dObject
{
	return nil;
}

// do something with the selected object(s) from the first and third panes
- (QSObject *)performActionOnObject:(QSObject *)dObject using:(QSObject *)iObject
{
	return nil;
}

// Call a method defined in QS{{cookiecutter.short_name}}.swift
// Please remove this method if not using Swift!
- (QSObject *)performActionInSwiftFromObjC:(QSObject *)dObject
{
  Class providerClass = NSClassFromString(@"QS{{cookiecutter.short_name}}.QS{{cookiecutter.short_name}}SwiftAction");
  QS{{cookiecutter.short_name}}SwiftAction* plugin = [[QS{{cookiecutter.short_name}}SwiftAction alloc]init];
  return [plugin performSwiftActionFromObjC:dObject];
}

// Call a method defined in QS{{cookiecutter.short_name}}.swift also using the third pane
// Please remove this method if not using Swift!
- (QSObject *)performActionInSwiftFromObjC:(QSObject *)dObject using:(QSObject *)iObject
{
  Class providerClass = NSClassFromString(@"QS{{cookiecutter.short_name}}.QS{{cookiecutter.short_name}}SwiftAction");
  QS{{cookiecutter.short_name}}SwiftAction* plugin = [[QS{{cookiecutter.short_name}}SwiftAction alloc]init];
  return [plugin performSwiftActionFromObjC:dObject using:iObject];
}

#pragma mark Quicksilver Validation

// return an array of objects that are allowed in the third pane
- (NSArray *)validIndirectObjectsForAction:(NSString *)action directObject:(QSObject *)dObject
{
	return nil;
}

// do some checking on the objects in the first pane
// if an action has `validatesObjects` enabled in Info.plist, this method must return the action's name or it will never appear
- (NSArray *)validActionsForDirectObject:(QSObject *)dObject indirectObject:(QSObject *)iObject
{
	return nil;
}

@end

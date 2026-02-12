//
//  {{cookiecutter.plugin_name}} Plug-in
//  {{cookiecutter.plugin_name}}Action.m
//
//  Created by {{cookiecutter.author}}
//

#import "{{cookiecutter.plugin_name}}.h"
#import "{{cookiecutter.plugin_name}}Action.h"
#import <{{cookiecutter.plugin_name}}-Swift.h>

@implementation {{cookiecutter.plugin_name}}Action

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

// Call a method defined in {{cookiecutter.plugin_name}}.swift
// Please remove this method if not using Swift!
- (QSObject *)performActionInSwiftFromObjC:(QSObject *)dObject
{
  {{cookiecutter.plugin_name}}SwiftAction* plugin = [[{{cookiecutter.plugin_name}}SwiftAction alloc]init];
  return [plugin performSwiftActionFromObjC:dObject];
}

// Call a method defined in {{cookiecutter.plugin_name}}.swift also using the third pane
// Please remove this method if not using Swift!
- (QSObject *)performActionInSwiftFromObjC:(QSObject *)dObject using:(QSObject *)iObject
{
  {{cookiecutter.plugin_name}}SwiftAction* plugin = [[{{cookiecutter.plugin_name}}SwiftAction alloc]init];
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

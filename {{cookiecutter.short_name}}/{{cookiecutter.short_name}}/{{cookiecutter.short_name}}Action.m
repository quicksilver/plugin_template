//
//  {{cookiecutter.short_name}} Plug-in
//  {{cookiecutter.short_name}}Action.m
//
//  Created by {{cookiecutter.author}}
//

#import "{{cookiecutter.short_name}}Action.h"

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

//
//  {{cookiecutter.short_name}} Plug-in
//  {{cookiecutter.short_name}}Source.m
//
//  Created by {{cookiecutter.author}}
//

#import "QS{{cookiecutter.short_name}}.h"
#import "{{cookiecutter.short_name}}Source.h"

@implementation QS{{cookiecutter.short_name}}Source

#pragma mark Catalog Entry Methods

// Try to determine if the source data has changed.
// If so, index is invalid - return NO to have it rescanned.
// If not, return YES to skip an unneccessary rescan.
- (BOOL)indexIsValidFromDate:(NSDate *)indexDate forEntry:(NSDictionary *)theEntry
{
	return NO;
}

// create and return an array of QSObjects to add to the catalog
- (NSArray *) objectsForEntry:(NSDictionary *)theEntry
{
	NSMutableArray *objects=[NSMutableArray arrayWithCapacity:1];
	QSObject *newObject;
	
	newObject = [QSObject makeObjectWithIdentifier:@"QS{{cookiecutter.short_name}}Test"];
	[newObject setName:@"Test {{cookiecutter.short_name}} Object"];
	[newObject setObject:@"data" forType:QS{{cookiecutter.short_name}}Type];
	[newObject setPrimaryType:QS{{cookiecutter.short_name}}Type];
	[objects addObject:newObject];

	return objects;
}

#pragma mark Object Handler Methods

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
@end

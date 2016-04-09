//
//  AppDelegate.m
//  NSCollectionViewTest
//
//  Created by Oleksii Baiev on 07/04/16.
//  Copyright © 2016 baev. All rights reserved.
//

#import "AppDelegate.h"

//static const NSSize buttonSize = { 80, 35 };
//static const NSSize itemSize = { 100, 100 };
//static const NSPoint buttonOrigin = { 10, 10 };

#pragma mark - BVView

//@interface BVView : NSView
//
//@property (weak) NSButton *button;
//
//@end
//
//@implementation BVView
//@synthesize button;
//- (id)initWithFrame:(NSRect)frameRect {
//    
//    self = [super initWithFrame:(NSRect){frameRect.origin, itemSize}];
//    if (self) {
//        NSButton *newButton = [[NSButton alloc]
//                               initWithFrame:(NSRect){buttonOrigin, buttonSize}];
//        [self addSubview:newButton];
//        self.button = newButton;
//    }
//    return self;
//}
//@end

#pragma mark - BVPrototype

@interface BVPrototype : NSCollectionViewItem

@end

@implementation BVPrototype

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    
    if (representedObject) {
        
        self.textField.stringValue = representedObject;
        self.imageView.image = [NSImage imageNamed:@"NSHomeTemplate"];
        
        NSTextField* tField = (NSTextField*)[[self.view subviews] lastObject];
        tField.stringValue = @"Test";
    }
    
}
@end

#pragma mark -

@interface AppDelegate ()

@property (strong) NSArray *titles;
@property (weak) IBOutlet NSCollectionView *collectionView;
@property (weak) IBOutlet NSWindow *window;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    self.titles = @[@"Case", @"Molly", @"Armitage", @"Hideo", @"The Finn", @"Maelcum", @"Wintermute", @"Neuromancer"];

    [self.collectionView setContent:[self titles]];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end

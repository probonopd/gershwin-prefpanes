/*
 * Copyright (c) 2005 Simon Peter
 *
 * SPDX-License-Identifier: BSD-2-Clause
 */

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@interface GlobalShortcutsController : NSObject
{
@public
    NSView *mainView;
    NSTableView *shortcutsTable;
    NSArrayController *shortcutsArrayController;
    NSMutableArray *shortcuts;
    NSButton *addButton;
    NSButton *deleteButton;
    NSButton *editButton;
    NSTextField *statusLabel;
    BOOL isDaemonRunning;
}

- (id)init;
- (void)dealloc;
- (NSView *)createMainView;
- (void)refreshShortcuts:(NSTimer *)timer;
- (void)addShortcut:(id)sender;
- (void)deleteShortcut:(id)sender;
- (void)editShortcut:(id)sender;
- (void)tableViewSelectionDidChange:(NSNotification *)notification;
- (void)tableDoubleClicked:(id)sender;
- (BOOL)loadShortcutsFromDefaults;
- (BOOL)saveShortcutsToDefaults;
- (BOOL)isDaemonRunningCheck;
- (void)updateDaemonStatus;
- (void)showAddEditShortcutSheet:(NSMutableDictionary *)shortcut isEditing:(BOOL)editing;
- (BOOL)isValidKeyCombo:(NSString *)keyCombo;

@end

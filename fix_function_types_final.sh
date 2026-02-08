#!/bin/bash

# Final comprehensive script to fix all remaining Function type patterns

echo "Fixing all remaining Function type patterns..."

# Middleware patterns (next parameter)
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/) =\u003e (next: Function) =\u003e/) =\u003e (next: (action: AnyAction) =\u003e any) =\u003e/g' {} +

# Dialog button callbacks
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onPrimaryButtonClick: Function;/onPrimaryButtonClick: () => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onTextButtonClick: Function;/onTextButtonClick: () => void;/g' {} +

# Drawer/menu functions
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/closeDrawer?: Function)/closeDrawer?: () => void)/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/lowerMenu: Function;/lowerMenu: (id: string) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/toggleMenu: Function;/toggleMenu: (id: string) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/openDrawerForParticipant?: Function;/openDrawerForParticipant?: (participant: any) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onRaiseMenu: Function;/onRaiseMenu: (participant: any) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/raiseParticipantContextMenu: Function;/raiseParticipantContextMenu: (participant: any) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/toggleParticipantMenu: Function;/toggleParticipantMenu: (participant: any) => void;/g' {} +

# Recording/streaming callbacks
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/initiator: { getId: Function; }/initiator: { getId: () =\u003e string; }/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/terminator?: { getId: Function; };/terminator?: { getId: () =\u003e string; };/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/(recorder: string | { getId: Function; })/(recorder: string | { getId: () =\u003e string; })/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/openRecordingDialog: Function)/openRecordingDialog: () => void)/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onChange: Function;/onChange: (value: any) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onRecordAudioAndVideoChange: Function;/onRecordAudioAndVideoChange: (checked: boolean) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onTranscriptionChange: Function;/onTranscriptionChange: (checked: boolean) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onUserChanged: Function;/onUserChanged: (user: any) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onBroadcastSelected: Function;/onBroadcastSelected: (broadcast: any) => void;/g' {} +

# Reactions/polls
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/customFunctions: Function\[\]/customFunctions: Array\u003c() =\u003e void\u003e/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/reactionRemove: Function;/reactionRemove: (reaction: string) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/setCheckbox: Function;/setCheckbox: (checked: boolean, index: number) => void;/g' {} +

# Remote control
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/            dispose: Function;/            dispose: () =\u003e void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/            on: Function;/            on: (event: string, handler: Function) =\u003e void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/receiverEndpointMessageListener: Function/receiverEndpointMessageListener: (event: any) =\u003e void/g' {} +

# Welcome/Tab icon
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/    src: Function;/    src: () =\u003e any;/g' {} +

# Feedback/recent list
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/, onClose?: Function)/, onClose?: () =\u003e void)/g' {} +

# Speaker stats  
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/ \*     getSpeakerStats: Function/ *     getSpeakerStats: () =\u003e any/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onSearch: Function;/onSearch: (query: string) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/(speakerStatsItem: Function): Function\[\]/(speakerStatsItem: React.ComponentType\u003cany\u003e): Array\u003cReact.ComponentType\u003cany\u003e\u003e/g' {} +

# Invite actions
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/request: { callback: Function;/request: { callback: (invitees: any[]) =\u003e void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/updateNumbers: Function;/updateNumbers: (numbers: string[]) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/parseResults: Function;/parseResults: (results: any) =\u003e void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/        callback: Function;/        callback: (invitees: any[]) =\u003e void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/t?: Function/t?: (key: string, options?: any) =\u003e string/g' {} +

# Web HID
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/outputEventGenerators: { \[key: string\]: Function; };/outputEventGenerators: { [key: string]: () =\u003e void; };/g' {} +

# Video menu
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/notifyClick?: Function;/notifyClick?: () => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/    dispatch?: Function;/    dispatch?: (action: any) =\u003e void;/g' {} +

# Remaining onFail that wasn't caught
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/dialOut(onSuccess: (code: string) =\u003e void, onFail: Function)/dialOut(onSuccess: (code: string) =\u003e void, onFail: (error?: Error) =\u003e void)/g' {} +

echo "All remaining patterns fixed!"

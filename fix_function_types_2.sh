#!/bin/bash

# Script to fix remaining specific Function type patterns

echo "Fixing remaining specific patterns..."

# Pattern 1: Throttled/debounced functions stored as class properties
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/_throttledResize: Function;/_throttledResize: (...args: any[]) => void;/g' {} +

# Pattern 2: Popover functions
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/hidePopover?: Function;/hidePopover?: () => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/showPopover?: Function;/showPopover?: () => void;/g' {} +

# Pattern 3: Video manager methods
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/_displayWarning: Function;/_displayWarning: (message: string) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/_dockToolbox: Function;/_dockToolbox: (enable: boolean) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/_muteLocal: Function;/_muteLocal: () => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/_setSharedVideoStatus: Function;/_setSharedVideoStatus: (status: string) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/_stopSharedVideo: Function;/_stopSharedVideo: () => void;/g' {} +

# Pattern 4: Settings device functions  
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/setVideoInputDevice: Function;/setVideoInputDevice: (deviceId: string) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/setAudioInputDevice: Function;/setAudioInputDevice: (deviceId: string) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/setAudioOutputDevice: Function;/setAudioOutputDevice: (deviceId: string) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/toggleVideoSettings: Function;/toggleVideoSettings: () => void;/g' {} +

# Pattern 5: onClose functions
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onClose: Function;/onClose: () => void;/g' {} +

# Pattern 6: Validation and post submit callbacks
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onPostSubmit?: Function;/onPostSubmit?: () => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/validateInput?: Function;/validateInput?: (value: string) => boolean;/g' {} +

# Pattern 7: Function parameters in function signatures
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onPostSubmit?: Function)/onPostSubmit?: () => void)/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/, failureCallback: Function)/, failureCallback: (error: Error) => void)/g' {} +

# Pattern 8: Transform/utility functions taking t as parameter
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/label: string, t: Function)/label: string, t: (key: string, options?: any) => string)/g' {} +

# Pattern 9: creator functions
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/_createOnPress: Function;/_createOnPress: () => () => void;/g' {} +

# Pattern 10: getter functions returning text
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/getUnsafeRoomTextFn: Function;/getUnsafeRoomTextFn: () => string;/g' {} +

echo "Specific patterns fixed."

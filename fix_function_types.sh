#!/bin/bash

# Script to fix common Function type patterns across the codebase
# This will be run in the react/ directory

echo "Fixing common Function type patterns..."

# Pattern 1: Translation functions (t: Function)
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/t: Function;/t: (key: string, options?: any) => string;/g' {} +

# Pattern 2: Simple event handlers without parameters
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onClick?: Function;/onClick?: () => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onPress?: Function;/onPress?: () => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onHide: Function;/onHide: () => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onRetry: Function;/onRetry: () => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onRefresh: Function;/onRefresh: () => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onPlaying?: Function;/onPlaying?: () => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onPlaying: Function;/onPlaying: () => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onVideoPlaying?: Function;/onVideoPlaying?: () => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onLongPress?: Function;/onLongPress?: () => void;/g' {} +

# Pattern 3: Keyboard event handlers
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onKeyDown?: Function;/onKeyDown?: (event: React.KeyboardEvent) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onKeyPress?: Function;/onKeyPress?: (event: React.KeyboardEvent) => void;/g' {} +

# Pattern 4: Cleanup/cancel functions
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/_cleanup?: Function;/_cleanup?: () => void;/g' {} +

# Pattern 5: Redux middleware next function (in function parameters)
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/next: Function, action: AnyAction/next: (action: AnyAction) => any, action: AnyAction/g' {} +

# Pattern 6: Component/icon types
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/icon: Function;/icon: React.ComponentType<any>;/g' {} +

# Pattern 7: Render functions
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/renderItem: Function;/renderItem: (item: any) => React.ReactNode;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/renderSectionHeader: Function;/renderSectionHeader: (section: any) => React.ReactNode;/g' {} +

# Pattern 8: Key extractor
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/keyExtractor: Function;/keyExtractor: (item: any) => string;/g' {} +

# Pattern 9: Item click handlers
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onItemClick: Function;/onItemClick: (item: any) => void;/g' {} +

# Pattern 10: schemeColor return type
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/): Function {/): (state: any) => string {/g' {} +

# Pattern 11: Variable declarations for listeners and cleanup
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/: Function | undefined/: (() => void) | undefined/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/: Function | null/: (() => void) | null/g' {} +

# Pattern 12: onSecond action/onLinkingOpenURLRejected
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onSecondaryAction: Function;/onSecondaryAction: (item: any) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i ''  's/onLinkingOpenURLRejected?: Function;/onLinkingOpenURLRejected?: (error: Error) => void;/g' {} +

# Pattern 13: _onUnmount
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/_onUnmount: Function;/_onUnmount: () => void;/g' {} +

# Pattern 14: cleanup parameter in actions
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/cleanup?: Function)/cleanup?: () => void)/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/cleanup: Function/cleanup: () => void/g' {} +

echo "Common patterns fixed. Manual fixes required for remaining cases."

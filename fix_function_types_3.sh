#!/bin/bash

# Script to fix final remaining Function type patterns

echo "Fixing final remaining patterns..."

# Pattern 1: onClick/onDoubleClick with potential params
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/    onClick: Function;/    onClick: (event?: MouseEvent) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/    onDoubleClick: Function;/    onDoubleClick: (event?: MouseEvent) => void;/g' {} +

# Pattern 2: t parameter in function signatures (remaining ones)
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/, t: Function)/, t: (key: string, options?: any) => string)/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/(t: Function)/(t: (key: string, options?: any) => string)/g' {} +

# Pattern 3: createOnPress
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/createOnPress: Function;/createOnPress: (key: string) => () => void;/g' {} +

# Pattern 4: Original event handlers
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/_originalOnMouseMove: Function;/_originalOnMouseMove: (event: MouseEvent) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/_originalOnShowToolbar: Function;/_originalOnShowToolbar: (show: boolean) => void;/g' {} +

# Pattern 5: submit callbacks
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/submit?: Function)/submit?: () => void)/g' {} +

# Pattern 6: loadedPreview and setter functions
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/loadedPreview: Function;/loadedPreview: (loaded: boolean) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/setLoading: Function;/setLoading: (loading: boolean) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/setOptions: Function;/setOptions: (options: any[]) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/setStoredImages: Function;/setStoredImages: (images: string[]) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onOptionsChange: Function;/onOptionsChange: (options: any) => void;/g' {} +

# Pattern 7: Message/chat callbacks
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onSend: Function;/onSend: (message: string) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onCancel: Function;/onCancel: () => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/_onSendMessage: Function;/_onSendMessage: () => void;/g' {} +

# Pattern 8: Desktop picker/source functions
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onSourceChoose: Function)/onSourceChoose: (sourceId: string, type: string, name: string) => void)/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onSourceChoose: Function;/onSourceChoose: (sourceId: string) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onShareAudioChecked: Function;/onShareAudioChecked: (checked: boolean) => void;/g' {} +

# Pattern 9: Prejoin/dial out functions
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onSuccess: Function,/onSuccess: (code: string) => void,/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onFail: Function,/onFail: (error?: Error) => void,/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/dialOut(onSuccess: Function, onFail: Function)/dialOut(onSuccess: (code: string) => void, onFail: (error?: Error) => void)/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/joinConference: Function;/joinConference: () => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/joinConferenceWithoutAudio: Function;/joinConferenceWithoutAudio: () => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/setJoinByPhoneDialogVisiblity: Function;/setJoinByPhoneDialogVisiblity: (visible: boolean) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/updateSettings: Function;/updateSettings: (settings: any) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/fetchConferenceDetails: Function;/fetchConferenceDetails: () => void;/g' {} +

# Pattern 10: Country picker functions
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/setDialOutCountry: Function;/setDialOutCountry: (country: any) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/setDialOutNumber: Function;/setDialOutNumber: (number: string) => void;/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/onEntryClick: Function;/onEntryClick: (item: any) => void;/g' {} +

# Pattern 11: Comment signatures  
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/ \*     setDialOutCountry: Function,/ *     setDialOutCountry: (country: any) =\u003e void,/g' {} +
find . -type f \( -name "*.ts" -o -name "*.tsx" \) -exec sed -i '' 's/ \*     setDialOutNumber: Function/ *     setDialOutNumber: (number: string) =\u003e void/g' {} +

echo "Final patterns fixed."

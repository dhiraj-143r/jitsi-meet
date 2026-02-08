module.exports = {
    extends: [
        '../.eslintrc.js',
        '@jitsi/eslint-config/jsdoc',
        '@jitsi/eslint-config/react',
        '.eslintrc-react-native.js'
    ],
    overrides: [
        {
            files: ['*.ts', '*.tsx'],
            extends: ['@jitsi/eslint-config/typescript'],
            parserOptions: {
                project: ['./tsconfig.web.json', './tsconfig.native.json']
            },
            rules: {
                // Working on remaining Function type violations (~165 remaining)
                '@typescript-eslint/no-unsafe-function-type': 'warn'
            }
        }
    ],
    settings: {
        react: {
            'version': 'detect'
        }
    }
};

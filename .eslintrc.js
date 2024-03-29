module.exports = {
	es6: true,
	root: true,
	extends: ['eslint:recommended', 'prettier'],
	parserOptions: {
		ecmaVersion: 2020,
		parser: 'babel-eslint',
		ecmaFeatures: {
			jsx: true,
		},
	},
	env: {
		es6: true,
		browser: true,
		node: true,
	},
	plugins: ['prettier', 'coffeescript'],
	globals: {},
	rules: {
		'prettier/prettier': 'warn',
		'class-methods-use-this': 'off',
		'no-param-reassign': 'off',
		camelcase: 'off',
		'no-unused-vars': 'off',
	},
};

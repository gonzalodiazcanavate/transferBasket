import js from "@eslint/js";
import globals from "globals";
import pluginReact from "eslint-plugin-react";
import json from "@eslint/json";
import markdown from "@eslint/markdown";
import css from "@eslint/css";
import {defineConfig} from "eslint/config";

export default defineConfig([
  // === JavaScript y JSX ===
  {
    files: ["**/*.{js,mjs,cjs,jsx}"],
    languageOptions: {
      globals: {
        ...globals.browser,
        ...globals.node,
      },
      parserOptions: {
        ecmaFeatures: {jsx: true},
        ecmaVersion: "latest",
        sourceType: "module",
      },
    },
    plugins: {
      react: pluginReact,
    },
    extends: [js.configs.recommended],
    rules: {
      // === Reglas base ===
      quotes: ["error", "double"],
      indent: ["error", 2],
      "max-len": ["error", {code: 150}],
      "require-jsdoc": "off",
      "valid-jsdoc": "off",
      "no-var": "error",
      "prefer-const": "error",
      "object-curly-spacing": ["error", "never"],
      "array-bracket-spacing": ["error", "never"],

      // === Reglas React ===
      "react/react-in-jsx-scope": "warn", // No necesario con React 17+
      "react/prop-types": "off",
      "react/jsx-uses-react": "off",
      "react/jsx-uses-vars": "error",
      "react/self-closing-comp": "warn",
      "react/jsx-curly-brace-presence": ["warn", "never"],
    },
    settings: {
      react: {
        version: "detect",
      },
    },
  },

  // === JSON ===
  {files: ["**/*.json"], plugins: {json}, language: "json/json", extends: ["json/recommended"]},
  {files: ["**/*.jsonc"], plugins: {json}, language: "json/jsonc", extends: ["json/recommended"]},
  {files: ["**/*.json5"], plugins: {json}, language: "json/json5", extends: ["json/recommended"]},

  // === Markdown ===
  {files: ["**/*.md"], plugins: {markdown}, language: "markdown/commonmark", extends: ["markdown/recommended"],},

  // === CSS ===
  {files: ["**/*.css"], plugins: {css}, language: "css/css", extends: ["css/recommended"],},
]);

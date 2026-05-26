#!/bin/bash
# Local PR Review - Run AI review on your git diff before pushing
# Usage: ./review/local-review.sh [base-branch]
#
# Prerequisites:
#   - git (with changes committed or staged)
#   - One of: claude, cursor, kiro CLI, or any AI tool that accepts stdin
#
# This script gets the diff and prints instructions for feeding it to your AI tool.

BASE_BRANCH="${1:-main}"
DIFF=$(git diff "$BASE_BRANCH"...HEAD)

if [ -z "$DIFF" ]; then
    echo "No changes found between HEAD and $BASE_BRANCH"
    echo "Make sure you have commits on your branch that differ from $BASE_BRANCH"
    exit 1
fi

DIFF_SIZE=${#DIFF}
echo "📋 Diff size: $DIFF_SIZE characters"
echo "📋 Base branch: $BASE_BRANCH"
echo ""

if [ "$DIFF_SIZE" -gt 80000 ]; then
    echo "⚠️  Diff is very large (>80K chars). Consider reviewing in smaller chunks."
    echo ""
fi

echo "=== REVIEW PROMPT ==="
echo ""
echo "Review the following code diff. Apply the rules from review/review-rules.md."
echo "For each issue: state file, line, severity (Critical/Major/Minor), problem, and fix."
echo "End with a merge decision: APPROVE, REQUEST_CHANGES, or COMMENT."
echo ""
echo "--- DIFF START ---"
echo "$DIFF"
echo "--- DIFF END ---"

#!/usr/bin/env ruby

require "json"

# Read JSON input from stdin
input = JSON.parse(STDIN.read)

# Get the bash command being executed
command = input.dig("tool_input", "command") || ""

# Check if it's a git commit command
if command.match?(/\bgit\s+commit\b/i)
  # Log what we're doing (visible in transcript mode)
  warn "Git commit detected. Running standardrb --fix..."

  # Run standardrb --fix
  system("standardrb --fix")

  # Run erb linter
  system("erblint --lint-all --autocorrect")

  # Check if standardrb succeeded
  if $?.success?
    warn "✓ Code formatted with standardrb"
    exit 0  # Success - let the commit proceed
  else
    warn "⚠ standardrb --fix failed (exit code: #{$?.exitstatus})"
    exit 1  # Non-blocking error - show warning but continue
  end
else
  # Not a git commit, just pass through
  exit 0
end

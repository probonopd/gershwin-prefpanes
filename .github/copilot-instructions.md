- Check dbus-specification.html for the official spec that we must conform to, and `tmp/` directory for working reference code!!!!!! Follow that logic flow when ours doesn't work. Always check the spec file.

- Use commands from `$PATH`, not hardcoded paths.
- Use `gmake`, not `make`.
- Avoid bashisms; use POSIX sh.
- Build the application until it works, even with multiple attempts.
- Fix all compiler warnings, regardless of severity.
- Use `sudo -A` for commands requiring root privileges.
- Compile with `clang19`, never `gcc`.
- Use extensive logging for debugging with NSLog.
- If you build a preference pane, test with `/System/Applications/SystemPreferences.app/SystemPreferences`.
- Refer to FreeBSD documentation and the porters handbook for building ports.
- Before running any shell commands, check which shell is being used.
- Remember that in one Terminal, you can only run one command at a time unless you use `&` to run it in the background.
- Always run commands with `timeout` to prevent hanging.
- If you run the same command multiple times, write an action to run it instead of repeating the command.
- We don't have `strace`, so use `truss` for tracing system calls.

- When observing dbus-daemon, we could replace the socket endpoint with a proxy using tools like socat to capture raw socket traffic. This allows you to effectively listen to the underlying UNIX socket communication that dbus-daemon uses.
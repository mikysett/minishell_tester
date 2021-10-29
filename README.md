# Minishell tester - 42Lisbon

- To run the tester `bash minishell_tester.sh`
- The default pathname for your executable is `../minishell`

## How to prepare your minishell
- Your minishell should support non interactive mode.
- This means to be able to run commands in a file when invoqued with a file name as argument (`./minishell test-file` should mimic `bash test-file`)

### How it works
- The tester will run the commands in `tests` and make a diff with `bash` output.
- To change the minishell default path modify `prog_pathname` in `minishell_tester`.
- The same way you can change `tests_path`.
- In tests with `env` and `export` some differences may be normal and don't require to be fixed (for example the order of the variables in `env`).

### Limitations
- This tester doesn't look for memory leaks.
- Content in files created by redirections (like `echo test >test-file`) are not checked by default. To test it, if you are creating your own tests, add commands at the end to check them, for example `cat test-file` at the end of the previous test.
- Also the tester doesn't check the return state by default. Still some test files end with `echo exit status $?` which prints the last exit status.
- To resume, the tester is as clever as the individual test files are. The ones provided by default try to catch most of possible scenarios.
- Some tests are supposed to give slightly different output, use your own judgent in those cases.
- The test was created for our own personal usage, so play with it and add tests for your own needs, since it doesn't cover every scenario.
- If you do so I'll appreciate very much you'll contact me so I can update the tests on this repo.
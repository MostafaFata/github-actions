Potential structure:

.github/
├── actions/
│   └── mvn-test-runner/
│       └── action.yml          # <-- BOTH HOOKS LIVE HERE!
│                               #     Steps 1-2: Replaces 'before_script' (Setup/Java)
│                               #     Step 3:    Runs the actual Maven test profile
│                               #     Steps 4-5: Replaces 'after_script' (HTML Indexing & Artifact Upload)
└── workflows/
├── ci.yml                  # Core Build & Light Test Workflow
├── scheduled-tests.yml     # Profile & Functional Tests (Calls mvn-test-runner)
├── regression-tests.yml    # Heavy Regression Suites (Calls mvn-test-runner)
└── deploy-pages.yml        # Documentation & Report publishing
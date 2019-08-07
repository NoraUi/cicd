#!/usr/bin/env bash

echo "[1565214900.443][SEVERE]: Timed out receiving message from renderer: -0.011"
echo "[INFO] Tests run: 4, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 7.16 s - in com.github.noraui.browser.AuthUT"
echo "[INFO] Running com.github.noraui.gherkin.GherkinConditionedLoopedStepUT"

curl -s "https://api.travis-ci.org/jobs/${TRAVIS_JOB_ID}/log.txt?deansi=true" > nonaui.log

counterFailures=$(sed -n 's:.*\[INFO\] Tests run: 4, Failures: \(.*\), , Errors: 0, Skipped: 0, Time elapsed: 7.16 s - in com.github.noraui.browser.AuthUT.*:\1:p' nonaui.log | head -n 1)
echo "******** counterFailures: $counterFailures"

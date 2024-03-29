#!/usr/bin/env bash

curl -s "https://api.travis-ci.org/jobs/${TRAVIS_JOB_ID}/log.txt?deansi=true" > nonaui.log

echo "[1565214900.443][SEVERE]: Timed out receiving message from renderer: -0.011" >> nonaui.log
echo "[INFO] Tests run: 4, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 7.16 s - in com.github.noraui.browser.AuthUT" >> nonaui.log
echo "[INFO] Tests run: 2, Failures: 2, Errors: 0, Skipped: 0, Time elapsed: 7.16 s - in com.github.noraui.browser.Runner" >> nonaui.log
echo "[INFO] Tests run: 5, Failures: 1, Errors: 0, Skipped: 0, Time elapsed: 7.16 s - in com.github.noraui.browser.AuthUT" >> nonaui.log
echo "[INFO] Tests run: 35, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 7.45 s - in com.github.noraui.browser.FooUT" >> nonaui.log
echo "[INFO] Running com.github.noraui.gherkin.GherkinConditionedLoopedStepUT" >> nonaui.log

counterFailures=$(sed -n 's/.*\[INFO\] Tests run: \(.*\), Failures: \([1-9]\), Errors: \(.*\), Skipped: \(.*\), Time elapsed.*UT.*/\2/p' nonaui.log | head -n 1)
echo "******** counter Failures : $counterFailures"

counterErrors=$(sed -n 's/.*\[INFO\] Tests run: \(.*\), Failures: \(.*\), Errors: \([1-9]\), Skipped: \(.*\), Time elapsed.*UT.*/\2/p' nonaui.log | head -n 1)
echo "******** counter Errors: $counterErrors"

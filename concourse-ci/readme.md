# Concourse CI

Configure four parameters when running `set-pipeline`:

```
fly -t veracode set-pipeline -c pipeline.yml -p veracode -v TEAM_ANALYSISCENTER_ID=359edffad5.... -v TEAM_ANALYSISCENTER_KEY=09fafebf9e1f3490.... -v PROJECT_NAME=concourse-ci-example -v VERACODE_WRAPPER_VERSION=18.4.5.1
```

NOTE: You should probably use a credentials manager instead of entering API key/id in pipeline parameters.

The lastest wrapper version can be found on [maven.org](https://repo1.maven.org/maven2/com/veracode/vosp/api/wrappers/vosp-api-wrappers-java/)

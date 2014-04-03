#!/bin/bash
##
## log phase hook
##
## Timing: Called at various points with log messages, these are 
## just like normal phase hooks except they'll have a few extra environment 
## variables set for them. By default we ignore the exit code of log hooks, 
## because we don't want failure in logging to stop the deployment.
##
## GIT_DEPLOY_LOG_LEVEL
## The log level, the lowercase equivalent of the levels documented in syslog(3)
## without the LOG_* prefix, e.g. "info" or "warning".
##
## GIT_DEPLOY_LOG_MESSAGE
## A free-form log message that we're passing to the log hook
##
## GIT_DEPLOY_LOG_ANNOUNCE
## Whether this message should be announced. These are messages that are more 
## important than others that you'd e.g. like to output to your IRC or Jabber
## deployment channel.

##
## The following environment variables are available to this hook:
##
## GIT_DEPLOY_ACTION
## The current action we're running, e.g. "start", "hotfix", "abort" etc.
##
## GIT_DEPLOY_PHASE
## The current hook phase, e.g. "post-pull", "pre-sync" etc.
## 
## GIT_DEPLOY_PREFIX
## The prefix of the current environment, e.g. "sheep", "cron" etc.
##
## GIT_DEPLOY_HOOK_PREFIX
## The prefix of the currently executing hook, like "GIT_DEPLOY_PREFIX" except 
## this will be "common" when the "common" hooks are being executed.
##
## GIT_DEPLOY_START_TAG
## Set to the tag we started with, currently only set (and can only ever be set)
## for a subset of the hooks.
##
## GIT_DEPLOY_ROLLOUT_TAG
## The tag we're rolling out, like "GIT_DEPLOY_START_TAG" this isn't set for all
## hooks.


exit 0

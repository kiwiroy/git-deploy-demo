#!/bin/bash
##
## post-reset phase hook
##
## Timing: Hooks executed after a reset, either via abort or revert.
## Most of the time you want to use post-tree-update hooks instead, but this is
## useful e.g. for putting a staging server back into a load balancer.

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

# stut/update-jekyll-site

This is a docker image built to run when I commit to any of my Jekyll-based sites. It currently contains:

* Jekyll.
* AWSCLI (some of my sites are hosted on S3).

## What does it do?

* Clones a git repo specified in an environment variable.
* Runs update.sh in the root of that clone - this should run Jekyll to build the site.
* Runs push.sh which should push the generated site to wherever it's hosted.

## How do I run it?

I've found CI systems to be the best way to run this. They will poll the git repo for commits and run this when it notices an update.

Use the run.sh script in this folder to run the image.

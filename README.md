# Drone + Nodejs example

This is an example of how to build a nodejs app using drone

# Prerequisites

* Node.js knowhow
* Docker
* Drone CLI
* Docker Hub account (or equivalent container repo)


# Walkthrough

In this example, I created a simple node app that displays the message `I'm HERE` when the container exits.

I also created a unit test using the `mocha` framework.  If this test were to fail, the build system would mark the build as failed, and stop.

# Components

## GitHub Repo

In order for the continuous integration pattern to work, you must have your code stored in a repository.  In this case, I stored my project in https://github.com/aroach/imapex-drone-example.

## Drone

To build, execute tests, and publish artifacts, we used the Drone build system.  You must configure a `.drone.yml`.  To secure your sensitive data, it's a best practice to use `drone secure` from the Drone CLI tools.  Each time you checkin your code to GitHub, it will fire a webhook to the Drone server.  When Drone receives this webhook, it will pull your code and start a new build.

## Docker Hub

Since we're building a container in this example, to make the container available to other systems, you need to have Drone publish your artifacts somewhere.  In this case, I  published it to Docker Hub: https://hub.docker.com/r/ciscodevnet/imapex-drone-nodejs/

# Conclusion

Following this pattern, you will have a nodejs project that will build in Drone based on a checkin to GitHub.  If the build succeeds, Drone will publish the artifact to Docker Hub.
While Docker requires root to run, most containers don't. In this scenario, we'll cover how easy is to run a docker container with non-root users.


### Why This Matters
Remember that a process running in a container is no different from other process running on Linux, except it has a small piece of metadata that declares that it’s in a container. Containers are not trust boundaries, so therefore, anything running in a container should be treated with the same consideration as anything running on the host itself.
# Yet another jenkins on mesos docker image


## Requirements
- docker >= 1.8.0
- mesos >= 0.23.0
- marathon >= 0.10.0
- a ceph cluster
- [docker-rbd-plugin](https://github.com/yp-engineering/rbd-docker-plugin) installed and configured on your mesos slaves

*(note: you can use any docker storage plugins)*

## Run
Modify marathon.json to fit your needs and POST the JSON to marathon. rbd volume should be created automatically. You can also pre-create (and prepopulate if you dare to) the volume if you need more or less space.
## Limitations
- Run only one instance per volume, so do not restart with marathon "restart app"

## ToDo
- JVM auto tuning (via cgroup mount)
- default config file
- https

### Was inspired by:
- https://hub.docker.com/r/thefactory/jenkins-mesos/


# Steps to Failure

* The usual AGC bootstrap process
* `agc context deploy --all`
* `agc workflow run hello --context ctx2`
* `agc logs engine --context ctx2` should now output: `standard_init_linux.go:228: exec user process caused: exec format error`

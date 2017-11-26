all:
	bazel run @org_tensorflow//:configure -- --tf_workspace=$(shell bazel info output_base)/external/org_tensorflow --workspace=$(PWD)

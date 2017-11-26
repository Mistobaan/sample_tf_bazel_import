# sample_tf_bazel_import

Sample Repository that can import tensorflow as a bazel dependency 


## 1. setup workspace

```python
load("@org_tensorflow//tensorflow:workspace.bzl", "tf_workspace")
tf_workspace(tf_repo_name="org_tensorflow")
```

# configure tensorflow

```bash
bazel run @org_tensorflow//:configure -- --tf_workspace=$(shell bazel info output_base)/external/org_tensorflow --workspace=$(PWD)
```

# sample build:

```bash
bazel build @org_tensorflow//tensorflow:tensorflow_py
```
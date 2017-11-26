workspace(name="tf_sample_repo")

# TensorFlow depends on "io_bazel_rules_closure" so we need this here.
# Needs to be kept in sync with the same target in TensorFlow's WORKSPACE file.
http_archive(
    name = "io_bazel_rules_closure",
    sha256 = "110fe68753413777944b473c25eed6368c4a0487cee23a7bac1b13cc49d3e257",
    strip_prefix = "rules_closure-4af89ef1db659eb41f110df189b67d4cf14073e1",
    urls = [
        "http://mirror.bazel.build/github.com/bazelbuild/rules_closure/archive/4af89ef1db659eb41f110df189b67d4cf14073e1.tar.gz",
        "https://github.com/bazelbuild/rules_closure/archive/4af89ef1db659eb41f110df189b67d4cf14073e1.tar.gz",  # 2017-08-28
    ],
)

load("@io_bazel_rules_closure//closure:defs.bzl", "closure_repositories")
closure_repositories()


new_http_archive(
    name = "org_tensorflow",
    strip_prefix = "tensorflow-1.5.0",
    urls = [
      "https://github.com/Mistobaan/tensorflow/archive/1.5.0.tar.gz",
    ],
    build_file_content="""
py_binary(
    name = "configure",
    srcs = [
        "configure.py",
    ],
    data = [
        "//tensorflow/tools/git:gen_git_source.py",
        "//tools", 
    ],
)                
    """,
)


load("@org_tensorflow//tensorflow:workspace.bzl", "tf_workspace")
tf_workspace(tf_repo_name="org_tensorflow")



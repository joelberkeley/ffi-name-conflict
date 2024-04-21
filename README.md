# ffi-name-conflict

Build Idris as normal
```bash
idris2 --build conflit.ipkg
```
Then in directory `cpp`, install [Bazelisk](https://github.com/bazelbuild/bazelisk) and run
```bash
cd cpp
./<path to bazelisk executable> build //:conflict
cd -
mv cpp/bazel-bin/libconflict.so .
```
and confirm the `mv`. Then
```bash
./build/exec/conflict
```

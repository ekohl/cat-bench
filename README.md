# cat-branch

## Benchmark registrations

First make sure everything is prepared:

```bash
./prepare
```

Right now you need to manually ensure an activation key with the name `test` exists.
This can be done with `hammer`:

```bash
hammer activation-key create --name test --lifecycle-environment Library --content-view "Default Organization View" --organization "Default Organization"
```

Then you can register a host:

```bash
./register
```

Or perform 100 registrations with 10 jobs using [parallel](https://www.gnu.org/software/parallel/):

```bash
parallel -a <(seq 1 100) -j 10 ./register
```

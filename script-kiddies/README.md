# Script Kiddies

## Description

The following scripts solve a problem that we have where we want to modify the
image tag in a Kubernetes manifest and we need to find the image and change the
tag.

We are going to use two different approaches:

- SED: [link](https://github.com/jrmanes/kubelite/tree/master/script-kiddies/sed_solution)
- AWK: [link](https://github.com/jrmanes/kubelite/tree/master/script-kiddies/awk_solution)

Both scripts do the same, the differente between them is that we use different tools.

---


## Usage

- `sed_solution`:
```bash
./sed_solution.sh "latest" "commitId" ./example.txt
```

- `awk_solution`: 
```bash
./awk_solution.sh "latest" "commitId" ./example.txt
```

---
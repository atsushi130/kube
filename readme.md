<p align="center">
    <h1 align="center">kube</h1>
</p1>

<p align="center"><i>Incrementally search pods for which kubectl command is to be executed.</i></p>

<p align="center">
    <a href=".license-mit"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a> 
</p>

## Support commands
```
❯ kube log
// kubectl logs {incremental searched pods} api -f
```

```
❯ kube login
// kubectl exec -it {incremental searched pods} bash
```

```
❯ kube config
// gcloud config set project {incremental searched project} && gcloud container clusters get-credentials api-cluster --zone asia-northeast1-a
```

## Installation via Homebrew
```
❯ brew tap atsushi130/tap
❯ brew install kube
```


## Using Library
- [Commandy](https://github.com/atsushi130/Commandy)

## Required
- gcloud
- kubectl
- fzf
- tmux

## License
kube is available under the MIT license. See the [LICENSE file](https://github.com/atsushi130/kube/blob/master/license-mit).

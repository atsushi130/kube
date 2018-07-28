<p align="center">
    <h1 align="center">kube</h1>
</p1>

<p align="center"><i>Incrementally search pods for which kubectl command is to be executed.</i></p>

<p align="center">
    <a href=".license-mit"><img src="https://img.shields.io/badge/license-MIT-blue.svg"></a> 
</p>

## Installation via Homebrew
```
❯ brew tap atsushi130/tap
❯ brew install kube
```

## Support
- `kubectl logs {incremental searched pods} api -f`
- `kubectl exec -it {incremental searched pods} bash`
- `gcloud config set project {incremental searched project} && - gcloud container clusters get-credentials api-cluster --zone asia-northeast1-a`

## License
kube is available under the MIT license. See the [LICENSE file](https://github.com/atsushi130/kube/blob/master/license-mit).

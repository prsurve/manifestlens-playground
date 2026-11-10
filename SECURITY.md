# Security policy

This repository holds sample manifests and workflows that test [k8s-manifestlens](https://github.com/prsurve/k8s-manifestlens). Nothing here is deployed, and the sample manifests are deliberately risky.

A report about the sample manifests being risky is not a vulnerability. These are worth reporting:

- a workflow here that could leak a token or run untrusted code with write access
- a secret committed by mistake

## Reporting a problem

Use GitHub's private reporting: open the **Security** tab of this repository and choose **Report a vulnerability**. Problems in k8s-manifestlens itself belong in [that repository](https://github.com/prsurve/k8s-manifestlens/security).

Do not include real secrets in a report.

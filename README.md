# manifestlens-playground

A test bed for [ManifestLens](https://github.com/prsurve/manifestlens). Nothing here is deployed.

| Path          | What it is                                       | Findings                    |
| ------------- | ------------------------------------------------ | --------------------------- |
| `k8s/good`    | a hardened Deployment and Service                | 0                           |
| `k8s/bad`     | a risky Deployment and Service                   | 2 errors, 9 warnings, 5 info |
| `k8s/web`     | a small web app                                  | 0 errors, 4 warnings, 3 info |
| `k8s/legacy`  | a copy of the risky manifest, excluded in tests  | 16, never counted           |

## Workflows

- **Canary** (`canary.yml`) runs daily and on every push. For `@v1`, `@v1.0.0`, `@v1.0.1` and `@main` it checks
  exact finding counts, enforce versus report mode, and a `paths` exclusion. A red run means a release or a runner
  image change broke the action.
- **Pull requests** (`pull-request.yml`) runs `@v1` with `scope: new` so you can try annotations and the comment.
  Edit a file under `k8s/` on a branch and open a PR.

Not covered: pull requests from forks and `pull_request_target`.

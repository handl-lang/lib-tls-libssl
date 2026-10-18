# lib-tls-libssl

Nonblocking TLS primitives over libssl — step functions a scheduler can park on. Generated libssl bindings vendored under `handl-packages/generated/`.

Part of the `handl-lang` org split (ADR-0128). History is a `git subtree
split` of the platform monorepo's `tls-libssl/` (via `c`).

## Layout

```text
src/        the .hnl sources
pkg.hnl     dependencies, when any: `{ deps: { <name>: "branch:<ref>" } }`
```

## Gate

```bash
HNL=../host-cli/target/debug/hnl scripts/hnl-gate.sh
```

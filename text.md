goimports
1. `goimports -w bonjour.go` writes results to source file instead of
stdout.
2. `goimports -format-only` is effectively `gofmt`. Therefore, `goimports -w -format-only bonjour.go` is same as `gofmt -w bonjour.go`

# BV Access Portal Code Read v5

Portal build: `portal-field-code-read-v5`

Archive:

- `bv-access-portal-code-read-v5.zip`

Contents:

- `public/portal.html`

Fix:

- Removes the misleading example code placeholder.
- Reads the real voucher from `input.value`.
- Falls back to URL voucher parameters only when the input is empty.
- Adds debug lines for `Code saisi`, `Source code`, and `Chiffres code`.


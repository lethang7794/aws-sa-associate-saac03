#!/usr/bin/env -S just --justfile
# Allows justfile to be executed like a script, e.g. `./justfile test`

export project_root := `git rev-parse --show-toplevel`
src_dir := "./src"
mdbook_summary_file := "SUMMARY.md"

_default:
    @just --list

# Generate mdbook SUMMARY.md from files structure
generate-mdbook-summary input_dir=src_dir output_file=mdbook_summary_file:
    {{ project_root }}/bin/generate-mdbook-summary {{ input_dir }} {{ output_file }}

# Start the mdbook server
dev: generate-mdbook-summary
    mdbook serve --watcher=native

# Check syntax of `justfile` and `.just` files
just-check:
    #!/usr/bin/bash
    find "${project_root}" -type f -name "*.just" | while read -r file; do
        echo "Checking syntax: $file"
        just --unstable --fmt --check -f $file
    done
    just --unstable --fmt --check -f ${project_root}/justfile

# Fix syntax of `justfile` and `.just` files
just-fix:
    #!/usr/bin/bash
    find "${project_root}" -type f -name "*.just" | while read -r file; do
        echo "Checking syntax: $file"
        just --unstable --fmt -f $file
    done
    just --unstable --fmt -f ${project_root}/justfile

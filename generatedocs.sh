sudo widdershins swagger.yaml -o doc-shins-markdown.md -l true -c true --verbose -u widdershins-templates/openapi3/ &&
sudo shins --inline doc-shins-markdown.md

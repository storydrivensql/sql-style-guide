# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build
DOCSDIR       = ./docs

.DEFAULT_GOAL := site


# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile site

site: singlehtml

	@echo '...rsyncing all contents of docs/html to docs (for Github pages)'

	rsync -ac _build/singlehtml/ $(DOCSDIR)
#   if this sphinx template is in a subdirectory, change the prior line to:
#	rsync -ac _build/html/ ../docs

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
#	@echo '...Deleting all _static, etc directories in docs/'
#	rm -rf docs/_* docs/html
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

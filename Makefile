JEKYLL=bundle exec jekyll
SHELL=bash
VIRTUALENV=virtualenv
PYTHON=python3.11

$(eval CONFIG= \
	$(shell find config -maxdepth 1 -type f -name '*.yml' | \
		  sort -g | awk -vORS=, ' {print $1} ')_config.yml)

$(eval OPTS= \
	--config "$(CONFIG)")

##
# Targets
help:
	@echo 'Makefile for Jekyll site'
	@echo ''
	@echo 'Usage:'
	@echo 'make init            Initialize directory'
	@echo 'make html            Generate the web site'
	@echo 'make clean           Clean up generated site'
	@echo 'make pages           Generate and commit the github-pages site (the '
	@echo '                     result still needs to be pushed to github).'

.vendor:
	bundle config set path .vendor/bundle
	bundle install

.PHONY: init
init: docs .vendor

.PHONY: html
html: docs .vendor
	$(JEKYLL) build $(OPTS)

.PHONY: serve
serve: docs .vendor
	$(JEKYLL) serve -w $(OPTS)

.PHONY: pages
pages: html
	$(SHELL) scripts/commit_pages.sh

docs:
	$(SHELL) scripts/make_worktree.sh

venv:
	$(VIRTUALENV) venv --python=`which $(PYTHON)`

notebook-requirements.txt: venv notebook-requirements.in
	venv/bin/pip install -U pip-tools
	venv/bin/pip-compile notebook-requirements.in > notebook-requirements.txt


.PHONY: notebook
notebook: notebook-requirements.txt
	venv/bin/pip install -r notebook-requirements.txt
	venv/bin/jupyter notebook


.PHONY: clean
clean:
	$(JEKYLL) clean


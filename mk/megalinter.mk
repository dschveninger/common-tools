qa-lint:  ## run Mega-linter using .mega-liner.yml config files
	@docker run --rm -v ${PROJ_DIR}:/tmp/lint ${MEGA_LINTER_IMAGE}

lint-fix:  ## run Mega-linter in fix mode
	@docker run --rm -e APPLY_FIXES=all -v ${PROJ_DIR}:/tmp/lint ${MEGA_LINTER_IMAGE}

lint-interactive:  ## run Mega-linter container in interactive mode
	@docker run --rm -ti --entrypoint=/bin/bash -v ${PROJ_DIR}:/tmp/lint ${MEGA_LINTER_IMAGE}

.PHONY: help lint-fix lint-run qa qa-lint
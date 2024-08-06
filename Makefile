.PHONY: greet
greet:
	@echo "Hello, $(USER)!"

.PHONY: init
init:
	docker build -t pyenv4sim .

.PHONY: sttdev
sttdev:
	docker run --rm -i -v $(PWD):/app/ -t pyenv4sim /bin/bash -c "python3 /app/src/cmd/devenv.py"


.PHONY: health
health:
	docker run --rm -i -v $(PWD):/app/ -t pyenv4sim /bin/bash -c "python3 /app/src/cmd/health_check.py"
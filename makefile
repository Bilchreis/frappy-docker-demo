
export WORK_DIR := ${PWD}
export PATH_VAR := ${PATH}




venv: .env .venv/touchfile

.venv/touchfile: pyproject.toml 
	python3 -m venv .venv
	. .venv/bin/activate; pip install --upgrade pip; pip install -r requirements.txt
	touch .venv/touchfile


clean:  ## 🧹 Clean up project
	rm -rf .venv
	rm -rf tests/node_modules
	rm -rf tests/package*
	rm -rf test-results.xml
	rm -rf __pycache__
	rm -rf .pytest_cache
	rm -rf pids.txt
	rm -rf *_log.txt
	rm -rf *egg-info
	rm -rf build
	rm -rf dist
	rm -rf .env


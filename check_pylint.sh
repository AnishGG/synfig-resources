find . -name "*.py" -print0 | xargs -0 pylint 2>&1 | tee err_pylint.rst~

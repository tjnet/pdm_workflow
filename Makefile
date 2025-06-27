# Knowledge Management Makefile

# Pattern for sample files (recursive)
SAMPLE_FILES := $(shell find knowledge -name '*.md.sample')

# List of files to create (remove .sample extension)
TARGET_FILES := $(SAMPLE_FILES:.md.sample=.md)

# Default target
.PHONY: create-knowledge-files
create-knowledge-files: $(TARGET_FILES)

# Create actual files from sample files
$(TARGET_FILES): %: %.sample
	@echo "Creating $@ from $<"
	@cp "$<" "$@"

# install necessary dependencies
install-dependencies:
	npm install -g @marp-team/marp-cli

# Convert presentation to PDF
pdf-presentation:
	@echo "Converting presentation to PDF..."
	marp knowledge/presentation/presentation.md --pdf --output tmp/presentation.pdf

# Help
.PHONY: help
help:
	@echo "Available targets:"
	@echo "  create-knowledge-files - Create all knowledge files from samples (default)"
	@echo "  install-dependencies  - Install necessary dependencies"
	@echo "  pdf-presentation      - Convert presentation to PDF in tmp directory"
	@echo "  help                  - Show this help message"

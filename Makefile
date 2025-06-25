# Knowledge Management Makefile

# Pattern for sample files
SAMPLE_FILES := $(wildcard knowledge/*.sample)

# List of files to create (remove .sample extension)
TARGET_FILES := $(SAMPLE_FILES:.sample=)

# Default target
.PHONY: create-knowledge-files
create-knowledge-files: $(TARGET_FILES)

# Create actual files from sample files
$(TARGET_FILES): %: %.sample
	@echo "Creating $@ from $<"
	@cp "$<" "$@"

# Help
.PHONY: help
help:
	@echo "Available targets:"
	@echo "  create-knowledge-files - Create all knowledge files from samples (default)"
	@echo "  help                  - Show this help message"


# directories
SRC_DIR := src
BUILD_DIR := build
OUT_DIR := bin

# file lists
MDS := $(shell find "$(SRC_DIR)" -type f -name "*.md")
TEXS := $(patsubst $(SRC_DIR)/%,$(BUILD_DIR)/%,$(MDS:.md=.tex))
PDFS := $(patsubst $(BUILD_DIR)/%,$(OUT_DIR)/%,$(TEXS:.tex=.pdf))

all : $(PDFS)

$(OUT_DIR)/%.pdf : $(BUILD_DIR)/%.tex
	@mkdir -p $(OUT_DIR)
	@echo "Compiling $< to PDF..."; pdflatex -interaction=batchmode -shell-escape -output-directory=$(OUT_DIR) $<

$(BUILD_DIR)/%.tex : $(SRC_DIR)/%.md
	@mkdir -p $(BUILD_DIR)
	@echo "Compiling $< to LaTeX..."; pandoc --from=markdown --to=latex --standalone --output=$@ $<

clean :
	@echo "Cleaning..."; $(RM) -r $(BUILD_DIR) $(OUT_DIR)

.PHONY: all clean
.SECONDARY: $(BUILD_DIR)/%.tex


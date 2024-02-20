
# project directories
SRC_DIR := src
STATIC_DIR := static
BUILD_DIR := build
OUT_DIR := bin

# project file lists
TEXS := $(shell find $(SRC_DIR) -type f -name "*.tex")
BUILD_PDFS := $(patsubst $(SRC_DIR)/%,$(BUILD_DIR)/%,$(TEXS:.tex=.pdf))

all : $(BUILD_PDFS)

$(BUILD_DIR)/%.pdf : $(SRC_DIR)/%.tex
	@mkdir -p $(BUILD_DIR)
	@echo "Compiling $<..."; pdflatex -interaction=nonstopmode -output-directory=$(BUILD_DIR) $<

clean :
	@echo "Cleaning..."; $(RM) -r $(BUILD_DIR) $(OUT_DIR)

.PHONY: all clean


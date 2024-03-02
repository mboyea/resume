
# directories
SRC_DIR := src
BUILD_DIR := build
OUT_DIR := bin
MEDIA_DIR := media

# file lists
MDS := $(wildcard $(SRC_DIR)/*.md)
BUILDS := $(patsubst $(SRC_DIR)/%,$(BUILD_DIR)/%,$(MDS:.md=.tex))
MEDIA := $(shell find $(MEDIA_DIR) -type f -name "*")
OUTS := $(patsubst $(BUILD_DIR)/%,$(OUT_DIR)/%,$(BUILDS:.tex=.pdf))

all : $(BUILDS) $(OUTS)

$(OUT_DIR)/%.pdf : $(BUILD_DIR)/%.tex $(MEDIA)
	@mkdir -p "$(OUT_DIR)"
	@echo "Compiling $@..."; pdflatex -interaction=batchmode -shell-escape -output-directory="$(OUT_DIR)" "$<"

.SECONDEXPANSION:
$(BUILD_DIR)/%.tex : $(SRC_DIR)/%.md $$(wildcard $(SRC_DIR)/%.tex)
	@mkdir -p "$(BUILD_DIR)"
	@echo "Compiling $@..."; pandoc --from=markdown --to=latex $(if $(wildcard $(<:.md=.tex)),--template="$(<:.md=.tex)") --standalone --output="$@" "$<" --top-level-division=chapter

clean :
	@echo "Cleaning..."; $(RM) -r "$(BUILD_DIR)" "$(OUT_DIR)"

.PHONY: all clean


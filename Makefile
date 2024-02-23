
# directories
SRC_DIR := src
BUILD_DIR := build
OUT_DIR := bin

# file lists
MDS := $(wildcard $(SRC_DIR)/*.md)
BUILDS := $(patsubst $(SRC_DIR)/%,$(BUILD_DIR)/%,$(MDS:.md=.tex))
OUTS := $(patsubst $(BUILD_DIR)/%,$(OUT_DIR)/%,$(BUILDS:.tex=.pdf))

all : $(OUTS) $(BUILDS)

$(OUT_DIR)/%.pdf : $(BUILD_DIR)/%.tex
	@mkdir -p "$(OUT_DIR)"
	@echo "Compiling $< to PDF..."; pdflatex -interaction=batchmode -shell-escape -output-directory="$(OUT_DIR)" "$<"

$(BUILD_DIR)/%.tex : $(SRC_DIR)/%.md
ifneq ($(wildcard $(<:.md=.tex)),)
	@mkdir -p "$(BUILD_DIR)"
	@echo "Compiling $< to LaTeX using template $(<:.md=.tex)..."; pandoc --from=markdown --to=latex --template="$(<:.md=.tex)" --standalone --output="$@" "$<"
else
	@mkdir -p "$(BUILD_DIR)"
	@echo "Compiling $< to LaTeX..."; pandoc --from=markdown --to=latex --standalone --output="$@" "$<"
endif

clean :
	@echo "Cleaning..."; $(RM) -r "$(BUILD_DIR)" "$(OUT_DIR)"

.PHONY: all clean


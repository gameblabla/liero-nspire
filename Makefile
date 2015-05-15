CXX := g++
MACHINE := $(shell $(CXX) -dumpmachine)
SYSROOT := $(shell $(CXX) -print-sysroot)
CXXFLAGS := -ffunction-sections -ffast-math -fsingle-precision-constant
CXXFLAGS += $(shell $(SYSROOT)/usr/bin/sdl-config --cflags)
LIBS := $(shell $(SYSROOT)/usr/bin/sdl-config --libs) -lSDL_mixer

OUTDIR		:= output/$(MACHINE)
DATADIR		:= data
OPKDIR		:= opk_data
RELEASEDIR	:= $(OUTDIR)/release

CXXFLAGS += -O2 -fomit-frame-pointer
LDFLAGS += 

CXXFLAGS += -DHOME_DIR -DPLATFORM_GCW0

BINDIR := $(OUTDIR)/bin
OBJDIR := $(OUTDIR)/obj

SRC := $(wildcard *.cpp)
OBJ := $(SRC:%.cpp=$(OBJDIR)/%.o)
EXE := $(BINDIR)/liero.elf

.PHONY: all clean

all : $(SRC) $(EXE)

$(EXE): $(OBJ) | $(BINDIR)
	$(CXX) $(LDFLAGS) $(OBJ) $(LIBS) -o $@

$(OBJ): $(OBJDIR)/%.o: %.cpp | $(OBJDIR)
	$(CXX) $(CXXFLAGS) $(INCLUDE) -c $< -o $@

$(BINDIR) $(OBJDIR):
	mkdir -p $@


clean:
	rm -rf output
	rm -rf $(RELEASEDIR)

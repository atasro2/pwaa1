CXX := g++
CXXFLAGS := -O2 -g -std=c++11

phscrdump: phscrdump.cpp ../preproc/charmap.cpp ../preproc/utf8.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	$(RM) phscrdump phscrdump.exe
.PHONY: clean

CXX = g++
CXXFLAGS = -Wall -g -O2
#LDFLAGS = -L/usr/example/lib -lexample1 -lexample2
SOURCES = app.cc class1.cc

app: $(SOURCES:.cc=.o)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $(SOURCES:.cc=.o) -o app

%.o: %.cc
	$(CXX) $(CXXFLAGS) $< -c

clean:
	rm -f app *.o

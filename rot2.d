import read;
import std;
void main(string[] s){
	auto foo=readfile(s[1]);
	foo[s[3].to!int..s[4].to!int+1].rotate(s[2].to!int);
	foo.writekeys;
}
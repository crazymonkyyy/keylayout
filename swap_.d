import read;
import std;
void main(string[] s){
	auto foo=readfile(s[1]);
	swap(foo[s[2].to!int],foo[s[3].to!int]);
	foo.writekeys;
}
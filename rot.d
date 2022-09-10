import read;
import std;
void main(string[] s){
	auto foo=readfile(s[1]);
	ref string get(string s){
		return foo[s.to!int];}
	//foreach(i;0..s[2].to!int){
	//	bringToFront(s[3..5].map!get,s[5..$].map!get);}
	//bringtofront bad
	s[3..$].map!get.rotate(s[2].to!int);
	foo.writekeys;
}
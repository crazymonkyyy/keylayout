import std;
alias keys=string[256];
keys readfile(string s_){
	keys o;
	foreach(s;File(s_).byLineCopy){
		assert(s[0..8]=="keycode ");
		int i=s[8..11].strip.to!int;
		o[i]=s[13..$];
	}
	return o;
}
void writekeys(keys k){
	foreach(i,s;k[].enumerate.drop(9)){//my file skipped 0..7 sooo
		writeln("keycode ",i.to!string.leftJustify(3)," =",s);
}}

void rotate(T)(T foo,int i){
	auto bar=foo.cycle.drop(i).take(foo.length).array[];
	foreach(ref e;foo){
		e=bar.front;
		bar.popFront;
}}
unittest{
	auto foo=[1,2,3,4,5];
	foo.rotate(2);
	foo.writeln;
}
void main(){
    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
    print(halogens);

    var names1 = <String>{};
    Set<String> names2 = {}; // This works, too.
    var names3 = {}; // Creates a map, not a set.

    print(names1);
    print(names2);
    print(names3);
}

void main2() {
    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
    print(halogens);

    var names1 = <String>{};
    Set<String> names2 = <String>{};

    names1.add('Ulfi Mustatiq Abidatul Izza'); // Menambahkan nama ke names1
    names1.add('2141720052'); // Menambahkan NIM ke names1

    names2.addAll(['Ulfi Mustatiq Abidatul Izza', '2141720052']); // Menambahkan nama dan NIM ke names2

    print(names1);
    print(names2);
}
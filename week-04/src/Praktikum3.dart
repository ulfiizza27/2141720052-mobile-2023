void main(){
    var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
    };

    var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    };

    print(gifts);
    print(nobleGases);

    var mhs1 = Map<String, String>();
    mhs1['first'] = 'partridge';
    mhs1['second'] = 'turtledoves';
    mhs1['fifth'] = 'golden rings';

    var mhs2 = Map<int, String>();
    mhs2[2] = 'helium';
    mhs2[10] = 'neon';
    mhs2[18] = 'argon';

    print(mhs1);
    print(mhs2);
}
 

void main2() {
    var gifts = {
        // Key:    Value
        'first': 'partridge',
        'second': 'turtledoves',
        'fifth': 1,
        'nama': 'Ulfi Mustatiq Abidatul Izza',
        'nim': '2141720052'
    };
    var nobleGases = {
        2: 'helium',
        10: 'neon',
        18: 2,
        'nama': 'Ulfi Mustatiq Abidatul Izza',
        'nim': '2141720052'
    };
    print(gifts);
    print(nobleGases);

    var mhs1 = Map<String, String>();
    mhs1['first'] = 'partridge';
    mhs1['second'] = 'turtledoves';
    mhs1['fifth'] = 'golden rings';
    mhs1['nama'] = 'Ulfi Mustatiq Abidatul Izza';
    mhs1['nim'] = '2141720052';
    var mhs2 = Map<int, String>();
    mhs2[2] = 'helium';
    mhs2[10] = 'neon';
    mhs2[18] = 'argon';
    mhs2[0] = 'Ulfi Mustatiq Abidatul Izza';
    mhs2[1] = '2141720052';
    print(mhs1);
    print(mhs2);
}
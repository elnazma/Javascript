const buffer = Buffer.from("Ini Saya Budi");

// kode dimulai dengan membuat object buffer baru yang disebut buffer

// kode kemudian membuat string kosong dan menambahkannya ke buffer
// yang baru dibuat,

console.info(buffer);
console.info(buffer.toString());
// Baris berikutnya membalik urutan karakter dalam string, sehingga
// menjadi " Ini" menjadi "Saya"

// Setelah dibalik, kita dapat melihat bahwa sekarang ada dua hasil
// "Budi" di awal dan yang lain dengan "Saya" di awal

buffer.reverse();
console.info(buffer.toString());        //dari no 16 sampe 17 fungsinya adalah untuk membalik angka dari belakang

// kode menghasilkan output : Ini Saya Budi dan iduB ayaS inI
// Byte adalah jumlah angka dalam string
const getUser      = (id, cb) => {   //cb adalah callback
    const time     = id === 1 ? 3000 : 2000;    //set waktu         //? adalah tanda if else
    setTimeout(()  => {
        const nama = id === 1 ? 'Ibu Budi' : 'Bapak Budi';
        cb({ id, nama });   //callback id dan nama
    }, time);
};

const userSatu = getUser(1, (hasil) => {     //user 1 sebagai Bapak Budi 3 detik
    console.log(hasil);
});
const userDua = getUser(2, (hasil) => {     //user 2 sebagai Bapak Budi 2 detik
    console.info(hasil);
});
const halo = 'Hello Semuanya!';      //user halo waktunya 1 detik
console.info('selesai');
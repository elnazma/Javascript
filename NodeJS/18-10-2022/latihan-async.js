const getMapel = (id, cb) => {
    const time = id == 1 ? 5000 : 3000;
    setTimeout(()=> {
        const mapel = id === 1 ? 'Matematika' : 'PAI';
        cb({mapel, id});
    }, time);
};

const mapelSatu = getMapel(1, (hasil) => {
    console.log(hasil);
});

const mapelDua = getMapel(2, (hasil) => {
    console.log(hasil);
})
const halo = 'SELAMAT BELAJAR SEMUA!';
console.log('selesai');
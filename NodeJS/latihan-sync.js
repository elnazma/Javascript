const getMapelSync = (id) => {
    const mapel = id === 1 ? 'Matematika' : 'PAI';
    return {id, mapel};
};

const mapelSatu = getMapelSync(1);
console.info(mapelSatu);

const mapelDua = getMapelSync(2);
console.info(mapelDua);

const halo = 'SELAMAT BELAJAR SEMUA!';
console.info(halo);
<<<<<<< HEAD
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BookingAlatTani {

    address public admin;

    constructor() {
        admin = msg.sender;
    }

    struct Alat {
        string nama;
        bool terpesan;
        address pemesan;
        string jadwal;
    }

    Alat[] public daftarAlat;

    // =========================
    // Tambah Alat (Admin)
    // =========================
    function tambahAlat(string memory _nama) public {
        require(msg.sender == admin, "Hanya admin");

        daftarAlat.push(
            Alat({
                nama: _nama,
                terpesan: false,
                pemesan: address(0),
                jadwal: ""
            })
        );
    }

    // =========================
    // Lihat jumlah alat
    // =========================
    function jumlahAlat() public view returns(uint){
        return daftarAlat.length;
    }

    // =========================
    // Booking alat
    // =========================
    function bookingAlat(uint _id, string memory _jadwal) public {

        require(_id < daftarAlat.length, "ID tidak valid");
        require(!daftarAlat[_id].terpesan, "Alat sudah dipesan");

        daftarAlat[_id].terpesan = true;
        daftarAlat[_id].pemesan = msg.sender;
        daftarAlat[_id].jadwal = _jadwal;
    }

    // =========================
    // Cek Status
    // =========================
    function lihatAlat(uint _id)
        public
        view
        returns(
            string memory,
            bool,
            address,
            string memory
        )
    {
        Alat memory alat = daftarAlat[_id];

        return (
            alat.nama,
            alat.terpesan,
            alat.pemesan,
            alat.jadwal
        );
    }
=======
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BookingAlatTani {

    address public admin;

    constructor() {
        admin = msg.sender;
    }

    struct Alat {
        string nama;
        bool terpesan;
        address pemesan;
        string jadwal;
    }

    Alat[] public daftarAlat;

    // =========================
    // Tambah Alat (Admin)
    // =========================
    function tambahAlat(string memory _nama) public {
        require(msg.sender == admin, "Hanya admin");

        daftarAlat.push(
            Alat({
                nama: _nama,
                terpesan: false,
                pemesan: address(0),
                jadwal: ""
            })
        );
    }

    // =========================
    // Lihat jumlah alat
    // =========================
    function jumlahAlat() public view returns(uint){
        return daftarAlat.length;
    }

    // =========================
    // Booking alat
    // =========================
    function bookingAlat(uint _id, string memory _jadwal) public {

        require(_id < daftarAlat.length, "ID tidak valid");
        require(!daftarAlat[_id].terpesan, "Alat sudah dipesan");

        daftarAlat[_id].terpesan = true;
        daftarAlat[_id].pemesan = msg.sender;
        daftarAlat[_id].jadwal = _jadwal;
    }

    // =========================
    // Cek Status
    // =========================
    function lihatAlat(uint _id)
        public
        view
        returns(
            string memory,
            bool,
            address,
            string memory
        )
    {
        Alat memory alat = daftarAlat[_id];

        return (
            alat.nama,
            alat.terpesan,
            alat.pemesan,
            alat.jadwal
        );
    }
>>>>>>> e6f37631d48889d738cf78b007b9c71a38270536
}
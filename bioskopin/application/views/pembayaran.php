<div class="container-fluid">
  <div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
      <div class="btn btn-sm btn-success">
        <?php
        $grand_total = 0;
        if ($keranjang = $this->cart->contents()) {
          foreach ($keranjang as $item) {
            $grand_total = $grand_total + $item['subtotal'];
          }
          echo "<h4>Total Harga Tiket: Rp. " . number_format($grand_total, 0, ',', '.');
        ?>
      </div><br><br>
      <h3>Masukkan Data Anda</h3>
      <form method="post" action="<?php echo base_url() ?>dashboard/proses_pesanan">
        <div class="form-group">
          <label for="Nama Lengkap">Teater</label>
          <select name="nama" id="" class="form-control">
            <option value="Grand City XXI">Grand City XXI</option>
            <option value="CGV Transmart">CGV Transmart</option>
            <option value="Galaxy Mall XXI">Galaxy Mall XXI</option>
            <option value="Pakuwon City Mall XXI">Pakuwon City Mall XXI</option>
            <option value="TV Hartono MER">TV Hartono MER</option>
          </select>
        </div>
        <div class="form-group">
          <label for="Alamat Lengkap">Metode Pembayaran</label>
          <select name="alamat" id="" class="form-control">
            <option value="BCA">BCA</option>
            <option value="BNI">BNI</option>
            <option value="BRI">BRI</option>
            <option value="MANDIRI">MANDIRI</option>
            <option value="QRIS">QRIS</option>
          </select>
        </div>
        <div class="form-group">
          <label for="No. Telepon">Nomor Duduk</label>
          <select name="seating" id="" class="form-control">
            <option value="">A</option>
            <option value="">B</option>
            <option value="">C</option>
            <option value="">D</option>
            <option value="">E</option>
            <option value="">F</option>
            <option value="">G</option>
            <option value="">H</option>
          </select>
          <select name="seating" id="" class="form-control">
            <option value="">1</option>
            <option value="">2</option>
            <option value="">3</option>
            <option value="">4</option>
            <option value="">5</option>
            <option value="">6</option>
            <option value="">7</option>
            <option value="">8</option>
          </select>
        </div>
        <!-- <div class="form-group">
          <label for="Jasa Pengiriman">Jasa Pengiriman</label>
          <select name="jasa" id="" class="form-control">
            <option value="">JNE</option>
            <option value="">TIKI</option>
            <option value="">POS Indonesia</option>
            <option value="">GOJEK</option>
            <option value="">GRAB</option>
          </select>
        </div>
        <div class="form-group">
          <label for="Pilih Bank">Pilih Bank</label>
          <select name="bank" id="" class="form-control">
            <option value="">BCA - XXXXXXX</option>
            <option value="">BNI - XXXXXXX</option>
            <option value="">BRI - XXXXXXX</option>
            <option value="">MANDIRI - XXXXXXX</option>
          </select>
        </div> -->
        <div class="form-group">
          <img src="<?php echo base_url() . '/uploads/seating.png'?>" class="card-img-top" alt="..." style="max-width: 500px; max-height: 500px;">
        </div>
        <button type="submit" class="btn btn-sm btn-primary mb-3" style="background-color:#eb5757; border-color: #eb5757">Pesan</button>
      </form>
    <?php
        } else {
          echo "<h4>Keranjang Belanja Anda masih kosong";
        }
    ?>
    </div>
    <div class="col-md-2"></div>
  </div>
</div>
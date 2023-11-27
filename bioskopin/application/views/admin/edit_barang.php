<div class="container-fluid">
  <h3><i class="fas fa-edit"></i>Edit Data Film</h3>
  <?php foreach ($barang as $brg) : ?>

    <form action="<?php echo base_url() . 'admin/data_barang/update' ?>" method="post">

      <div class="for-group mb-2">
        <label>Judul Film</label>
        <input type="text" name="nama_brg" class="form-control" value="<?php echo $brg->nama_brg ?>">
      </div>

      <div class="for-group mb-2">
        <label>Sinopsis</label>
        <input type="hidden" name="id_brg" class="form-control" value="<?php echo $brg->id_brg ?>">
        <input type="text" name="keterangan" class="form-control" value="<?php echo $brg->keterangan ?>">
      </div>

      <div class="for-group mb-2">
        <label>Genre</label>
        <input type="text" name="kategori" class="form-control" value="<?php echo $brg->kategori ?>">
      </div>

      <div class="for-group mb-2">
        <label>Harga</label>
        <input type="text" name="harga" class="form-control" value="<?php echo $brg->harga ?>">
      </div>

      <div class="for-group mb-2">
        <label>Durasi</label>
        <input type="text" name="stok" class="form-control" value="<?php echo $brg->stok ?>">
      </div>

      <button type="submit" class="btn btn-primary btn-sm mt-3">Simpan</button>

    </form>
  <?php endforeach; ?>
</div>
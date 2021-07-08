-- ----------------------------
-- Table structure for tb_product
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_product";
CREATE TABLE "public"."tb_product" (
  "sku" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "image" text COLLATE "pg_catalog"."default" NOT NULL,
  "price" numeric(20) NOT NULL,
  "description" text COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."tb_product" OWNER TO "postgres";

-- ----------------------------
-- Records of tb_product
-- ----------------------------
BEGIN;
INSERT INTO "public"."tb_product" VALUES ('tes-el6-Hit', 'test el6', 'http://image.elevenia.co.id/g/9/1/9/1/7/3/25919173_B.jpeg', 1000000, '<p>test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6test el6</p>');
INSERT INTO "public"."tb_product" VALUES ('HPET03', 'Pakaian Anjing Dan Kucing HOOPET warna SILVER', 'http://image.elevenia.co.id/g/0/2/2/7/9/6/28022796_B_V1.jpg', 150000, '<p>BAJU BRAND HOOPET UNTUK ANJING DAN KUCING</p><p><br>GAYA YG BERBEDA<br>BAHAN YG LEMBUT<br>* Hangat Di Musim dingi</p><p>PERHATIAN!<br>Pada saat memesan harap buat catatan UKURAN / SIZE yg di pesan,<br>Apabila tidak mencatumkan UKURAN/SIZE Maka kami kirim ukuran secara acak dengan<br>stok yg tersedia</p><p>SIZE Leher(cm/inch) Dada(cm/inch) Panjang(cm/inch)</p><p>BESAR =M 28/11inc 33-38/13inc-15.8inc 28/11inc</p><p>MEDIUM = S 25/9.8inc 28-33/11inc-13.8inc 23/9inc</p><p>KECIL =XS 22/8.7inc 23-28/9inc-11.8inc 18/7.1inc</p>');
INSERT INTO "public"."tb_product" VALUES ('1203578196', 'Tas selempang Biru Dongker', 'http://image.elevenia.co.id/g/0/2/6/5/3/1/26026531_B_V2.jpeg', 30000, 'Tas Selempang Merk Dhavin
Memiliki Bahan yang kuat dan tahan lama
memudahkan anda membawa barang-barang saat berpergian
memiliki bentuk yang simpel dan trendy.

Ready Stok Warna Navy Blue');
INSERT INTO "public"."tb_product" VALUES ('SPGN02', 'SGP Neo Hybrid Ex Plastic Case for iPhone 6 Plus - Gold', 'http://image.elevenia.co.id/g/0/2/2/8/6/5/28022865_B.jpeg', 200000, '<p>Spigen Hard Case untuk iPhone 6 Plus ini terbuat dari bahan Polycarbonate yang<br>kokoh dan ringan. Case ini juga hadir dengan berbagai pilihan warna menarik.</p><p>Top Quality and Durable Polycarbonate Material<br>Dengan bahan Plastic yang kuat dan kokoh membuat Hard Case ini dapat mengabsorb<br>impact yang terjadi saat terjatuh atau terbentur.</p><p>Easy Fold Design<br>SGP Tough Armor dilengkapi dengan kickstand pada bagian belakang yang berfungsi<br>agar iPhone Anda dapat digunakan dalam posisi berdiri dengan stabil.</p><p>Perfectly Fit Your Cell Phone<br>Design yang super tipis dan ringan membuat iPhone 6 Plus Anda lebih nyaman saat<br>digunakan. Hard Case ini juga hadir dengan berbagai pilihan warna-warna menarik.</p><p>Shockproof Air Cushion<br>Case ini dilengkapi dengan sistem peredam jatuh sehingga iPhone Anda tidak akan<br>rusak saat terjatuh.</p><p>Warna Gold</p>');
INSERT INTO "public"."tb_product" VALUES ('MAGDALENE_BLACK', 'Baju Magdalene', 'http://image.elevenia.co.id/g/0/2/2/6/9/6/no_image_300.gif', 89000, '<p>dsadasdaas</p>
<p>asdasd</p>
<p>asdasdasd</p>
<p>asd</p>
<p>asdasdasdasdafgfghdfhthgfg</p>
<p>ghghfgj</p>
<p>gjj</p>
<p>gf</p>
<p>hfgh</p>');
INSERT INTO "public"."tb_product" VALUES ('CD001', 'Celana Dalam Sepeda Cycling Pants Bantalan Gel Empuk', 'http://image.elevenia.co.id/g/6/8/2/7/3/1/26682731_B_V3.jpeg', 99000, '<p>Celana Dalam Sepeda dengan Bantalan Gel Empuk Sejuk Nyaman Dipakai</p><p><br>DESKRIPSI PRODUK :</p><p><br>1. Tebal bantalan 2.1cm <br>2. Didesain khusus dengan Elastic Interface Technology yang mampu memaksimalkan<br>performa dan kenyamanan anda saat berkendara <br>3. Bantalan yang empuk berfungsi untuk Mengurangi gesekan yang terjadi saat<br>mengayuh sepeda sehingga mengurangi kemungkinan lecet pada kulit<br>4. Dibuat dengan bahan yang berpori sehingga tidak mudah basah oleh keringat</p><p></p><p><br>Cotton + Nylon Material</p><p>Terbuat dari bahan katun dan nylon yang lentur sehingga muat untuk banyak ukuran<br>badan.</p><p></p><p><br>Body Fit</p><p>Celana ini memiliki model body fit sehingga pergerakan Anda menjadi lebih<br>leluasa dan tidak terbeban sama sekali. Sangat cocok digunakan untuk bersepeda<br>baik indoor maupun outdoor.</p><p></p><p></p><p></p><p>Ready Ukuran XXL (Ukuran celana 36-40)</p>');
INSERT INTO "public"."tb_product" VALUES ('SPGN02 - CSG001', 'Beli Casing HP iPhone 6 Plus 3 Gratis Casing 1', 'http://image.elevenia.co.id/g/0/1/5/3/0/1/28015301_B.jpeg', 1000000, '<p>&nbsp;<strong>Casing SGP Neo Hybrid Ex Plastic Case for iPhone 6 Plus</strong></p>');
INSERT INTO "public"."tb_product" VALUES ('NOOSY02', 'NOOSY TPU Soft Case for iPhone 6 Plus - Transparant', 'http://image.elevenia.co.id/g/0/2/2/2/3/8/28022238_B.jpeg', 100000, '<p>TPU soft case NOOSY untuk iPhone 6 Plus Anda terbuat dari bahan material yang lembut dan berkualitas untuk melindungi setiap sisi iPhone Anda dari benturan dan goresan.</p><p>Features<br>High Quality Material<br>Soft case ini terbuat dari bahan material metal yang lembut dan berkualitas, sehingga memberikan perlindungan ekstra untuk iPhone 6 Plus Anda dari goresan dan benturan.</p><p>Easy Access to All Buttons<br>Anda tetap mendapat akses ke setiap port dan button yang terdapat di device Anda dengan gampang.</p><p>Removable, Durable, Reusable and Washable<br>Tidak perlu kuatir soft case ini kotor saat dipakai beraktivitas karena Anda dapat mencuci case ini tanpa mengurangi kualitasnya.</p><p>Compatibility<br>Case ini cocok dan pas untuk iPhone 6 Plus Anda.</p>');
INSERT INTO "public"."tb_product" VALUES ('KAOS2', 'Baju Kaos Polos Aneka Size', 'http://image.elevenia.co.id/g/0/2/2/7/1/6/28022716_B_V1.jpeg', 500000, '<p>&nbsp;StyleBasics Men''s Round Neck Basic T-shirt merupakan kaos polos tanpa corak yang cocok dikenakan oleh pria. Kaos ini dirancang dengan model kerah bulat (round neck) yang nyaman digunakan untuk beraktivitas untuk suasana yang santai. Kaos ini terbuat dari bahan 30S dengan ketebalan yang tepat, sehingga memberikan kesejukkan saat Anda mengenakannya. Teknik jahitannya yang rapi juga akan menjaga kaos ini tetap awet dan tahan lama. &nbsp;</p>
<p><strong>Detail</strong> - Model: Kaos - Warna: Merah - Gender: Pria - Material: Fabric 30S - Desain: Round neck - Ukuran: XXL&nbsp;</p>');
INSERT INTO "public"."tb_product" VALUES ('U81818181818', 'Charm Body Fit Extra Maxi Wing 20pads  Test Only', 'http://image.elevenia.co.id/g/0/2/2/2/3/1/28022231_B.jpeg', 79000, '<p><strong>Deskripsi</strong></p>
<p>Charm Body Fit Extra Maxi Wings. Dengan bantalan elastis yang kembali ke bentuk semula sehingga mencegah pembalut berkerut, dengan teknologi double block line untuk mencegah pembalut bocor, serta dilengkapi dengan permukaan yang lembut di kulit agar membe<br>
</p>
<p>Charm Body Fit Extra Maxi Wings. With an elastic pad back into shape so as to prevent the pads wrinkled, with double-block line technology to prevent leaking dressings, and equipped with a soft on the skin surface in order to provide comfort when worn.</p>
<p><br></p>
<p>Test Produk Only.</p>');
INSERT INTO "public"."tb_product" VALUES ('TORU02', 'TORU Motomo Aluminium Case for iPhone 6 Plus - Silver', 'http://image.elevenia.co.id/g/0/2/2/8/4/9/28022849_B_V1.jpeg', 200000, '<p>TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan. Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p><p>Features<br>High Quality Material<br>TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan.</p><p>Lightweight Design<br>Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p><p>Compatibility<br>TORU Motomo Aluminium Case cocok dan pas untuk iPhone 6+ Anda.</p>');
INSERT INTO "public"."tb_product" VALUES ('HPET02', 'Pakaian Kucing Dan Anjing HOOPET  Warna GREY', 'http://image.elevenia.co.id/g/0/2/2/2/5/7/28022257_B.jpeg', 150000, '<p>BRAND HOOPETUNTUK ANJING DAN KUCING</p><p><br>GAYA YG BERBEDA<br>BAHAN YG LEMBUT<br> * Hangat Di Musim dingi</p><p>PERHATIAN!<br>Pada saat memesan harap buat catatan UKURAN / SIZE yg di pesan,<br>Apabila tidak mencatumkan UKURAN/SIZE Maka kami kirim ukuran secara acak dengan<br>stok yg tersedia</p><p><br>SIZE Leher(cm/inch) Dada(cm/inch) Panjang(cm/inch)</p><p>BESAR =M 30/11.8inc 35-40/13.8inc-15.8inc 28/11inc</p><p>MEDIUM = S 26/10.2inc 30-35/11.8inc-13.8inc 23/9.1inc</p><p>KECIL =XS 22/8.7inc 25-30/10inc-11.8inc 18/7.1inc</p>');
INSERT INTO "public"."tb_product" VALUES ('SPGN01', 'SGP Neo Hybrid Ex Plastic Case for iPhone 6 Plus - Magenta', 'http://image.elevenia.co.id/g/0/2/2/8/9/6/28022896_B.jpeg', 200000, '<p>Spigen Hard Case untuk iPhone 6 Plus ini terbuat dari bahan Polycarbonate yang<br>kokoh dan ringan. Case ini juga hadir dengan berbagai pilihan warna menarik.</p><p>Top Quality and Durable Polycarbonate Material<br>Dengan bahan Plastic yang kuat dan kokoh membuat Hard Case ini dapat mengabsorb<br>impact yang terjadi saat terjatuh atau terbentur.</p><p>Easy Fold Design<br>SGP Tough Armor dilengkapi dengan kickstand pada bagian belakang yang berfungsi<br>agar iPhone Anda dapat digunakan dalam posisi berdiri dengan stabil.</p><p>Perfectly Fit Your Cell Phone<br>Design yang super tipis dan ringan membuat iPhone 6 Plus Anda lebih nyaman saat<br>digunakan. Hard Case ini juga hadir dengan berbagai pilihan warna-warna menarik.</p><p>Shockproof Air Cushion<br>Case ini dilengkapi dengan sistem peredam jatuh sehingga iPhone Anda tidak akan<br>rusak saat terjatuh.</p><p>Warna Magenta</p>');
INSERT INTO "public"."tb_product" VALUES ('1609397612', 'test el5', 'http://image.elevenia.co.id/g/9/2/2/8/7/4/25922874_B_V1.jpeg', 1000000, '<p>test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4</p>');
INSERT INTO "public"."tb_product" VALUES ('COL-PAC-(GR-KUN', 'Coleman Packable Grass', 'http://image.elevenia.co.id/g/0/2/2/1/8/8/28022188_B_V1.jpeg', 230000, '<p>Tas Selempang Bahu yang dapat dilipat Ukuran : Normal 34x27x13cm Dilipat : sekitar 10x14x6cm<br>
Kapasitas : sekitar 13L<br>
Berat : sekitar 128G<br>
Bahan : 70D tiga ripstop nilon&nbsp;</p>');
INSERT INTO "public"."tb_product" VALUES ('BLACK', 'Baju Corak Carik Warna Warni', 'http://image.elevenia.co.id/g/0/2/2/6/4/5/28022645_B_V1.jpg', 100000, '<p>Baju Corak Carik Warna Warni Bahan Katun Baju Corak Carik Warna Warni banyak warna Baju Corak Carik Warna Warni Baju Corak Carik Warna Warni</p>');
INSERT INTO "public"."tb_product" VALUES ('TORU01', 'TORU Motomo Aluminium Case for iPhone 6 Plus - Dark Blue', 'http://image.elevenia.co.id/g/0/2/2/8/4/1/28022841_B.jpeg', 200000, '<p>TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan. Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p><p>Features<br>High Quality Material<br>TORU Motomo Aluminium Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan.</p><p>Lightweight Design<br>Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p><p>Compatibility<br>TORU Motomo Aluminium Case cocok dan pas untuk iPhone 6+ Anda.</p>');
INSERT INTO "public"."tb_product" VALUES ('test el4', 'test el5', 'http://image.elevenia.co.id/g/9/1/9/1/5/5/25919155_B_V76.jpeg', 1000000, '<p>test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4test el4</p>');
INSERT INTO "public"."tb_product" VALUES ('kopigy1', 'kopi gayo', 'http://image.elevenia.co.id/g/0/2/2/6/5/3/28022653_B_V1.jpeg', 10000000, '<p>fdashfUFHYDHFYDHFYASHIJDISC sfbhsdbfsdfndkcmkmkjsaub hd</p>');
INSERT INTO "public"."tb_product" VALUES ('SPG04', 'SPG Full Armor Case for iphone 6 plus', 'http://image.elevenia.co.id/g/9/9/6/8/2/1/25996821_B_V5.jpeg', 200000, '<p>&nbsp;CASE SPG Full Armor Case terbuat dari bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra untuk iPhone 6+ Anda dari goresan dan benturan. Dengan design yang ramping dan ringan, Anda tetap mendapat akses ke setiap tombol dengan mudah.</p>
<p>High Quality Material</p>
<p>SPG Full Armor Case terbuat dari &nbsp;&nbsp;bahan material aluminium yang kokoh, sehingga memberikan perlindungan ekstra &nbsp;&nbsp;untuk iPhone 6+ Anda dari goresan dan benturan.</p>
<p>Lightweight Design</p>
<p>Dengan design yang ramping dan ringan, Anda &nbsp;&nbsp;tetap mendapat akses ke setiap tombol dengan mudah.</p>
<p>Compatibility</p>
<p>SPG Full Armor Case cocok dan pas &nbsp;&nbsp;untuk iPhone 6+ Anda.</p>');
COMMIT;

-- ----------------------------
-- Primary Key structure for table tb_product
-- ----------------------------
ALTER TABLE "public"."tb_product" ADD CONSTRAINT "tb_product_pkey" PRIMARY KEY ("sku");

-- ----------------------------
-- Foreign Keys structure for table tb_product
-- ----------------------------
ALTER TABLE "public"."tb_product" ADD CONSTRAINT "tb_product_sku_fkey" FOREIGN KEY ("sku") REFERENCES "public"."tb_product" ("sku") ON DELETE NO ACTION ON UPDATE NO ACTION;

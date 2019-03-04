<?php
/**
 * Cấu hình cơ bản cho WordPress
 *
 * Trong quá trình cài đặt, file "wp-config.php" sẽ được tạo dựa trên nội dung 
 * mẫu của file này. Bạn không bắt buộc phải sử dụng giao diện web để cài đặt, 
 * chỉ cần lưu file này lại với tên "wp-config.php" và điền các thông tin cần thiết.
 *
 * File này chứa các thiết lập sau:
 *
 * * Thiết lập MySQL
 * * Các khóa bí mật
 * * Tiền tố cho các bảng database
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Thiết lập MySQL - Bạn có thể lấy các thông tin này từ host/server ** //
/** Tên database MySQL */
define('DB_NAME', 'khuyenmai_tenten');

/** Username của database */
define('DB_USER', 'root');

/** Mật khẩu của database */
define('DB_PASSWORD', '');

/** Hostname của database */
define('DB_HOST', 'localhost');

/** Database charset sử dụng để tạo bảng database. */
define('DB_CHARSET', 'utf8mb4');

/** Kiểu database collate. Đừng thay đổi nếu không hiểu rõ. */
define('DB_COLLATE', '');

/**#@+
 * Khóa xác thực và salt.
 *
 * Thay đổi các giá trị dưới đây thành các khóa không trùng nhau!
 * Bạn có thể tạo ra các khóa này bằng công cụ
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Bạn có thể thay đổi chúng bất cứ lúc nào để vô hiệu hóa tất cả
 * các cookie hiện có. Điều này sẽ buộc tất cả người dùng phải đăng nhập lại.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'o H V:DE*OHT3Z~;Wm$tJ;}{.+_@Q9G^tSe>J:]d,nwNXLXRYh;WNs:i{LLl ;!a');
define('SECURE_AUTH_KEY',  'juboVXJ68q4A_SDZMV/R,O[U&TeztlU]IlPTHX R{Gt0on>(,re%9b.C,46*HAfL');
define('LOGGED_IN_KEY',    '[O]2dh/H9{?03;]<z4q.)@RE|$Bw|^Q>B#=|6inOww@xz;^3uRi$P-Pp[_L{LE(j');
define('NONCE_KEY',        'WrA8]uj|ga<*.=?Vf(;CjO,9mm60{u%o<Yytx_7!{I,`1WLTrN|P`6nmfe.@ESYF');
define('AUTH_SALT',        'wI`s{Q0fUaCK%R~}wET4]inCi0qr38`,%q:^7_kyFAf~`F4VIJpy^f8WRF?GlSU4');
define('SECURE_AUTH_SALT', '*,nVK~QVjTAXUP=,N:,JEOtmHZ;QcXLhAD s,,|+@B_cgV/$pr1>vWqM3TEo~{@A');
define('LOGGED_IN_SALT',   'YEQI-W@:K2Cq2>/g56B[`ZLg47(-n3r{Bs[,ol 1k_oF>H.n9CV/D=-J$duKczXS');
define('NONCE_SALT',       '-#h@cX-2htpKPw,H*,WtH*{uqunxlx(qi?8ge1b60Tk]PSuiFi7@L%1o1~r/#aD+');

/**#@-*/

/**
 * Tiền tố cho bảng database.
 *
 * Đặt tiền tố cho bảng giúp bạn có thể cài nhiều site WordPress vào cùng một database.
 * Chỉ sử dụng số, ký tự và dấu gạch dưới!
 */
$table_prefix  = 'wp_';

/**
 * Dành cho developer: Chế độ debug.
 *
 * Thay đổi hằng số này thành true sẽ làm hiện lên các thông báo trong quá trình phát triển.
 * Chúng tôi khuyến cáo các developer sử dụng WP_DEBUG trong quá trình phát triển plugin và theme.
 *
 * Để có thông tin về các hằng số khác có thể sử dụng khi debug, hãy xem tại Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Đó là tất cả thiết lập, ngưng sửa từ phần này trở xuống. Chúc bạn viết blog vui vẻ. */

/** Đường dẫn tuyệt đối đến thư mục cài đặt WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Thiết lập biến và include file. */
require_once(ABSPATH . 'wp-settings.php');

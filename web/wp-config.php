<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'wpuser' );

/** Database password */
define( 'DB_PASSWORD', 'password' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'cQIFlg91>~5ZT9_&:z>^3I|AZp:a[]PsZ:2f:-AuF,}].3~y?,lz275JktD.xs#2' );
define( 'SECURE_AUTH_KEY',   'tMZ#hN _5Q?NbIeOS1qkn*(d$xb6OXP(3)nL[@!$/>{NC8v/Lr)M<Li9|Rh&9H*h' );
define( 'LOGGED_IN_KEY',     'G]exq,od=YNs29z]4,5a-~*Dt[vN6M)DXTyOGybBgx9v(hQ-b*ApHRxG`O7ef_TB' );
define( 'NONCE_KEY',         '}xIr1C|5k`!`/~)n09_35l[7|{~m^}tHWpTEA#^9|5SVo4cN_EcF0:LR )o~.OHh' );
define( 'AUTH_SALT',         '[US3Oa}]<?jdpYl>^?4s</AosT&I}1(NX&HGywmV  |XX;DShuye<=`Zb%F($h~H' );
define( 'SECURE_AUTH_SALT',  '&im-.W7dChur,v$eD=4@7Y~txSbC(Qq)A&2Mqd=Mj #`#&<lK<2AQQCga5K~U;P]' );
define( 'LOGGED_IN_SALT',    '{u5Pn;8ji_f[Lq|dUi/.4%Ya2pogk}+QZT4IR.<c}T|@A%7d2TcB6Ap~5=vrM^:-' );
define( 'NONCE_SALT',        'jAUsL=&EFaz)3S76S[g23oAe7`XUq-7;E+_u-&S#6$kXwZqjg2l#ztcJ=.Wg33ez' );
define( 'WP_CACHE_KEY_SALT', 'x.!95h-q*w@`)k/.ou)o]KVbCS0d<6MW+C6^|pA<bQ~Br[Y>0T/zH@..pcOG36g/' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

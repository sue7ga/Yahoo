use File::Spec;
use File::Basename qw(dirname);
my $basedir = File::Spec->rel2abs(File::Spec->catdir(dirname(__FILE__), '..'));
my $dbpath = File::Spec->catfile($basedir, 'db', 'development.db');
+{
    'DBI' => [
        "dbi:SQLite:dbname=$dbpath", '', '',
        +{
            sqlite_unicode => 1,
        }
    ],

    'YAHOO' => {
      'APP_ID'     => 'dj0zaiZpPThuWk1YUTdTemF4MyZzPWNvbnN1bWVyc2VjcmV0Jng9OTM-',
      'SECRET_KEY' => '5a81072907282e9bccaf8ee9e319bd5437a851cf',
      'AFFILIATE_ID'=> '5DSPLNsjKrMaB659D_lvptzJ1Uw-',
    },
};

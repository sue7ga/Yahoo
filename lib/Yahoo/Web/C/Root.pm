package Yahoo::Web::C::Root;

use strict;
use warnings;
use utf8;
use JSON;
use LWP::UserAgent;
use URI;
use Data::Dumper;

sub index{
 my($self,$c) = @_;
 my $config = Yahoo->load_config();
 my $uri = URI->new("http://shopping.yahooapis.jp/ShoppingWebService/V1/json/itemSearch");
 $uri->query_form("query" => "神奈川 名産","affiliate_type" => "yid","affiliate_id" => $config->{YAHOO}->{AFFILIATE_ID},"appid" => $config->{YAHOO}->{APP_ID});
 my $res = LWP::UserAgent->new()->get($uri);
 my $json = JSON->new()->utf8(0)->decode($res->decoded_content);
 my $pref_result = $json->{'ResultSet'}->{'0'}->{'Result'};
 my @prefsvalues = values $pref_result;
 print Dumper @prefsvalues;
 return $c->render("index.tx" => {'pref_result' => $pref_result});
}

1;

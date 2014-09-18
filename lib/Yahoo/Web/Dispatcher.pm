package Yahoo::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::RouterBoom;

use Module::Find;
useall 'Yahoo::Web::C';

base 'Yahoo::Web::C';

get '/' => 'Root#index';

1;

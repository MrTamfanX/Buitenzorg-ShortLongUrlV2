#!usr/bin/tamfan/perl
#Tools ini adalah pemendek url yang di buat oleh Prakasa_Jr64
#Jangan coba coba recode ya, Cape tau buatnya pakai otak apalagi harus otodidak
#support : MrTamfanX Cyber Team - Buitenzorg Syndicateo - UYSFDS MrTamfanX
#Tools ini di buat juga dengan berbahasa inggris, Supaya orang luar paham memakainya
use Term::ANSIColor;
use if $^O eq "MSWin32", Win32::Console::ANSI;
use POSIX qw(strftime);
use WWW::Shorten;
use WWW::Shorten::GitHub; 
use WWW::Shorten 'GitHub';
use WWW::Shorten 'TinyURL';
use WWW::Shorten 'SnipURL';
use WWW::Shorten 'Shorl';
@months = qw( Januari Februari Maret April Mei Juni Juli Agustus September Oktober November Desmber );
@days = qw(Minggu Senin Selasa Rabu Kamis Jumat Sabtu Minggu);
$years = strftime "%Y", gmtime;
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
mrtamfanx();
menukas();
sub mrtamfanx {
if ($^O =~ /MSWin32/) {system("mode con: cols=100 lines=29");system("cls"); }else { system("resize -s 28 87");system("clear"); }
print color('bold red'),"┏━━━┓  ┳    ┳ ┳ ┏━━┳━━┓ ┏━━━━┓ ┏━┓ ┳ ┏━━━━┓ ┏━━━━┓ ┏━━━━┓ ┏━━━━┓\n";
print color('bold red'),"┃┏━┓┗┓ ┃    ┃ ┃ ┃  ┃  ┃ ┃    ┃ ┃ ┃ ┃ ┻   ┏┛ ┃    ┃ ┃    ┃ ┃\n";
print color('bold red'),"┃┗━┛ ┃ ┃    ┃ ┃    ┃    ┃      ┃ ┃ ┃    ┏┛  ┃    ┃ ┃    ┃ ┃\n";
print color('bold red'),"┃  ━━┫ ┃    ┃ ┃    ┃    ┣━━━   ┃ ┃ ┃   ┏┛   ┃    ┃ ┣━━┳━┛ ┃ ━━━┓\n";
print color('bold white'),"┃┏━┓ ┃ ┃    ┃ ┃    ┃    ┃      ┃ ┃ ┃  ┏┛    ┃    ┃ ┃  ┗┓  ┃    ┃\n";
print color('bold white'),"┃┗━┛┏┛ ┃    ┃ ┃    ┃    ┃    ┃ ┃ ┃ ┃ ┏┛   ┳ ┃    ┃ ┃   ┃  ┃    ┃\n";
print color('bold white'),"┗━━━┛  ┗━━━━┛ ┻    ┻    ┗━━━━┛ ┻ ┗━┛ ┗━━━━┛ ┗━━━━┛ ┻   ┻  ┗━━━━┛\n";
print color('bold cyan'),"┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓\n";
print color('bold cyan'),"┃";
print color('bold red'),"Author ";
print color('bold green'),": ";
print color('bold white'),"MrTamfanX ";
print color('bold red'),"&& ";
print color('bold white'),"TUANB4DUT ";
print color('bold blue'),"Team ";
print color('bold green'),": ";
print color('bold red'),"Buitenzorg Syndicate.io";
print color('bold cyan'),"┃\n";
print color('bold cyan'),"┃";
print color('bold white'),"Hubungi/Contact WhatsApp ";
print color('bold green'),": 62 857";
print color('bold white'),"-";
print color('bold green'),"8041";
print color('bold white'),"-";
print color('bold green'),"1404 ";
print color('bold red'),"& ";
print color('bold green'),"62 812";
print color('bold white'),"-";
print color('bold green'),"2121";
print color('bold white'),"-";
print color('bold green'),"5191";
print color('bold cyan'),"┃\n";
print color('bold cyan'),"┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\n";
print color('bold cyan'),"┃";
print color('bold yellow'),"  This tool is a tool to shorten a URL and extend a URL link  ";
print color('bold cyan'),"┃\n";
print color('bold cyan'),"┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛\n";
print color('bold red'),"┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫\n";
print color('bold white'),"[";
print color('bold red'),"•";
print color('bold white'),"]";
print color('bold white'),"Date ";
print color('bold green'),": ";
print color('bold yellow'),"$mday ";
print color('bold white'),"Day ";
print color('bold green'),": ";
print color('bold yellow'),"$days[$wday] ";
print color('bold white'),"Month ";
print color('bold green'),": ";
print color('bold yellow'),"$months[$mon] ";
print color('bold white'),"Year ";
print color('bold green'),": ";
print color('bold yellow'),"$years\n";
print color('bold white'),"[";
print color('bold red'),"•";
print color('bold white'),"]";
print color('bold white'),"Now at ";
print color('bold green'),": ";
print color('bold yellow'),"$hour ";
print color('bold green'),": ";
print color('bold yellow'),"$min ";
print color('bold green'),": ";
print color('bold yellow'),"$sec\n\n";
}
sub menukas {
print nomerkas(),"SHORT TINYURL\n";
print nomerkas1(),"LONG TINYURL\n";
print nomerkas2(),"SHORT GITHUB\n";
print nomerkas3(),"LONG GITHUB\n";
print nomerkas5(),"SHORT SHORL\n";
print nomerkas6(),"LONG SHORL\n";
print nomerkas7(),"SHORT SNIPURL\n";
print nomerkas10(),"LONG SNIPURL\n";
print nomerkas4(),"KELUAR\n\n";
print nomerkas8(),"";
chomp($akas=<STDIN>);
if($akas eq '1'){
use WWW::Shorten 'TinyURL';
mrtamfanx();
print nomerkas01(),"";
chomp($akasurl=<STDIN>);

use WWW::Shorten 'TinyURL', ':short';
my $long_url = $akasurl;
my $short_url = short_link($long_url);
print color('bold white'),"[";
print color('bold green'),"✓";
print color('bold white'),"]";
print color('bold white')," Results ";
print color('bold green'),": ";
print color('bold yellow'),"$short_url\n";
print color('bold white'),"";
}if($akas eq '2'){
use WWW::Shorten 'TinyURL';
mrtamfanx();
print nomerkas02(),"";
chomp($akasurl1=<STDIN>);
use WWW::Shorten 'TinyURL', ':short';
my $short_url = $akasurl1;
my $long_url = long_link($short_url);
print color('bold white'),"[";
print color('bold green'),"✓";
print color('bold white'),"]";
print color('bold white')," Results ";
print color('bold green'),": ";
print color('bold yellow'),"$long_url\n";
print color('bold white'),"";
}if($akas eq '3'){
use WWW::Shorten 'GitHub';
mrtamfanx();
print nomerkas01(),"";
chomp($akasurl2=<STDIN>);

use WWW::Shorten 'GitHub';
my $long_url = $akasurl2;
my $short_url = makeashorterlink($long_url);
print color('bold white'),"[";
print color('bold green'),"✓";
print color('bold white'),"]";
print color('bold white')," Results ";
print color('bold green'),": ";
print color('bold yellow'),"$short_url\n";
print color('bold white'),"";
}if($akas eq '4'){
use WWW::Shorten 'GitHub';
mrtamfanx();
print nomerkas02(),"";
chomp($akasurl3=<STDIN>);
use WWW::Shorten 'GitHub';
my $short_url = $akasurl3;
my $long_url = makealongerlink($short_url);
print color('bold white'),"[";
print color('bold green'),"✓";
print color('bold white'),"]";
print color('bold white')," Results ";
print color('bold green'),": ";
print color('bold yellow'),"$long_url\n";
print color('bold white'),"";
}if($akas eq '5'){
use WWW::Shorten 'Shorl';
mrtamfanx();
print nomerkas01(),"";
chomp($akasurl4=<STDIN>);

use WWW::Shorten 'Shorl';
my $long_url = $akasurl4;
my $short_url = makeashorterlink($long_url);
print color('bold white'),"[";
print color('bold green'),"✓";
print color('bold white'),"]";
print color('bold white')," Results ";
print color('bold green'),": ";
print color('bold yellow'),"$short_url\n";
print color('bold white'),"";
}if($akas eq '6'){
use WWW::Shorten 'Shorl';
mrtamfanx();
print nomerkas02(),"";
chomp($akasurl5=<STDIN>);
use WWW::Shorten 'Shorl';
my $short_url = $akasurl5;
my $long_url = makealongerlink($short_url);
print color('bold white'),"[";
print color('bold green'),"✓";
print color('bold white'),"]";
print color('bold white')," Results ";
print color('bold green'),": ";
print color('bold yellow'),"$long_url\n";
print color('bold white'),"";
}if($akas eq '7'){
use WWW::Shorten 'SnipURL';
mrtamfanx();
print nomerkas01(),"";
chomp($akasurl6=<STDIN>);

use WWW::Shorten 'SnipURL';
my $long_url = $akasurl6;
my $short_url = makeashorterlink($long_url);
print color('bold white'),"[";
print color('bold green'),"✓";
print color('bold white'),"]";
print color('bold white')," Results ";
print color('bold green'),": ";
print color('bold yellow'),"$short_url\n";
print color('bold white'),"";
}if($akas eq '8'){
use WWW::Shorten 'SnipURL';
mrtamfanx();
print nomerkas02(),"";
chomp($akasurl10=<STDIN>);
use WWW::Shorten 'SnipURL';
my $short_url = $akasurl10;
my $long_url = makealongerlink($short_url);
print color('bold white'),"[";
print color('bold green'),"✓";
print color('bold white'),"]";
print color('bold white')," Results ";
print color('bold green'),": ";
print color('bold yellow'),"$long_url\n";
print color('bold white'),"";
}

}

sub nomerkas
{
    my $n = shift // '1';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] "
    , color('bold cyan')
    ;
}

sub nomerkas1

{
    my $n = shift // '2';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] "
    , color('bold cyan')
    ;
}
sub nomerkas7
{
    my $n = shift // '7';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] "
    , color('bold cyan')
    ;
}
sub nomerkas10
{
    my $n = shift // '8';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] "
    , color('bold cyan')
    ;
}
sub nomerkas5

{
    my $n = shift // '5';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] "
    , color('bold cyan')
    ;
}
sub nomerkas6

{
    my $n = shift // '6';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] "
    , color('bold cyan')
    ;
}
sub nomerkas2

{
    my $n = shift // '3';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] "
    , color('bold cyan')
    ;
}

sub nomerkas3
{
    my $n = shift // '4';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] "
    , color('bold cyan')
    ;
}

sub nomerkas4
{
    my $n = shift // '9';
    return color('bold white'),"["
    , color('bold green'),"$n"
    , color('bold white'),"] "
    , color('bold red')
    ;
}
sub nomerkas8
{
    my $n = shift // 'MENU';
    return color('bold white'),"[ "
    , color('bold green'),"$n"
    , color('bold white')," ] "
    , color('bold cyan'),"TYPE AND SELECT YOUR NUMBER "
    , color('bold green'),": "
    , color('bold yellow')
    ;
}
sub nomerkas01
{
    my $n = shift // 'SHORT URL';
    return color('bold white'),"[ "
    , color('bold green'),"$n"
    , color('bold white')," ] "
    , color('bold cyan'),"Type Your URL Link "
    , color('bold green'),": "
    , color('bold white')
    ;
}
sub nomerkas02
{
    my $n = shift // 'LONG URL';
    return color('bold white'),"[ "
    , color('bold green'),"$n"
    , color('bold white')," ] "
    , color('bold cyan'),"Type Your URL Link "
    , color('bold green'),": "
    , color('bold white')
    ;
}

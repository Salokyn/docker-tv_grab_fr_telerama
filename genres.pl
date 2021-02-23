#!/usr/bin/perl -w

#
# The categories recognized by tvheadend (see epg.c) 
#  

my $MOVIE             =    "Movie / Drama";
my $THRILLER          =    "Detective / Thriller";
my $ADVENTURE         =    "Adventure / Western / War";
my $SF                =    "Science fiction / Fantasy / Horror";
my $COMEDY            =    "Comedy";
my $SOAP              =    "Soap / Melodrama / Folkloric";
my $ROMANCE           =    "Romance";
my $HISTORICAL        =    "Serious / Classical / Religious / Historical movie / Drama";
my $XXX               =    "Adult movie / Drama";

my $NEWS              =    "News / Current affairs";
my $WEATHER           =    "News / Weather report";
my $NEWS_MAGAZINE     =    "News magazine";
my $DOCUMENTARY       =    "Documentary";
my $DEBATE            =    "Discussion / Interview / Debate";
my $INTERVIEW         =    $DEBATE ;

my $SHOW              =    "Show / Game show";
my $GAME              =    "Game show / Quiz / Contest";
my $VARIETY           =    "Variety show";
my $TALKSHOW          =    "Talk show";

my $SPORT             =    "Sports";
my $SPORT_SPECIAL     =    "Special events (Olympic Games; World Cup; etc.)";
my $SPORT_MAGAZINE    =    "Sports magazines";
my $FOOTBALL          =    "Football / Soccer";
my $TENNIS            =    "Tennis / Squash";
my $SPORT_TEAM        =    "Team sports (excluding football)";
my $ATHLETICS         =    "Athletics";
my $SPORT_MOTOR       =    "Motor sport";
my $SPORT_WATER       =    "Water sport";
my $SPORT_WINTER      =    "Winter sports";
my $EQUESTRIAN        =    "Equestrian";
my $SPORT_MATIAL      =    "Martial sports";

my $KIDS              =    "Children's / Youth programmes";
my $KIDS_0_5          =    "Pre-school children's programmes";
my $KIDS_6_14         =    "Entertainment programmes for 6 to 14";
my $KIDS_10_16        =    "Entertainment programmes for 10 to 16";
my $EDUCATIONAL       =    "Informational / Educational / School programmes";
my $CARTOON           =    "Cartoons / Puppets";

my $MUSIC             =    "Music / Ballet / Dance";
my $ROCK_POP          =    "Rock / Pop";
my $CLASSICAL         =    "Serious music / Classical music";
my $FOLK              =    "Folk / Traditional music";
my $JAZZ              =    "Jazz";
my $OPERA             =    "Musical / Opera";
my $BALLET            =    "Ballet";

my $CULTURE           =    "Arts / Culture (without music)";
my $PERFORMING        =    "Performing arts";
my $FINE_ARTS         =    "Fine arts";
my $RELIGION          =    "Religion";
my $POPULAR_ART       =    "Popular culture / Traditional arts";
my $LITERATURE        =    "Literature";
my $FILM              =    "Film / Cinema";
my $EXPERIMENTAL_FILM =    "Experimental film / Video";
my $BROADCASTING      =    "Broadcasting / Press";
my $NEW_MEDIA         =    "New media";
my $ARTSMAG           =    "Arts magazines / Culture magazines";
my $FASHION           =    "Fashion";

my $SOCIAL            =    "Social / Political issues / Economics";
my $MAGAZINE          =    "Magazines / Reports / Documentary";
my $ECONOMIC          =    "Economics / Social advisory";
my $VIP               =    "Remarkable people";

my $SCIENCE           =    "Education / Science / Factual topics";
my $NATURE            =    "Nature / Animals / Environment";
my $TECHNOLOGY        =    "Technology / Natural sciences";
my $DIOLOGY           =    $TECHNOLOGY;
my $MEDECINE          =    "Medicine / Physiology / Psychology";
my $FOREIGN           =    "Foreign countries / Expeditions";
my $SPIRITUAL         =    "Social / Spiritual sciences";
my $FURTHER_EDUCATION =    "Further education";
my $LANGUAGES         =    "Languages";

my $HOBBIES           =    "Leisure hobbies";
my $TRAVEL            =    "Tourism / Travel";
my $HANDICRAF         =    "Handicraft";
my $MOTORING          =    "Motoring";
my $FITNESS           =    "Fitness and health";
my $COOKING           =    "Cooking";
my $SHOPPING          =    "Advertisement / Shopping";
my $GARDENING         =    "Gardening";

#
# This is the 
#
#
#

my %REPLACE=(
    "météo"              => $WEATHER ,
    "Film"               => $MOVIE ,
    "théâtre"            => $PERFORMING,
    "ballet"             => $BALLET ,
    "clips"              => $MUSIC ,
    "concert"            => $MUSIC ,
    "court métrage"     => $EXPERIMENTAL_FILM,
    "débat"             => $DEBATE ,
    "divertissement"     => $VARIETY ,
    "Documentaire"       => $DOCUMENTARY ,
    "drame"              => $MOVIE ,
    "série dramatique"  => $SOAP ,
    "Feuilleton"         => $SOAP ,
    "série hospitalière"         => $SOAP ,
    "émission"          => 0,
    "fin"                => 0,
    "fin des programmes" => 0 ,
    "interview"          => $INTERVIEW ,
    "jeu"                => $GAME ,
    "Jeunesse"           => $KIDS ,
    "journal"            => $NEWS ,
    "Loterie"            => 0 ,
    "Magazine"           => $MAGAZINE ,
    "magazine de reportages" => $MAGAZINE ,
    "magazine de découvertes" => $TECHNOLOGY ,
    "sciences et technique" => $TECHNOLOGY ,
    "magazine d'actualité" => $NEWS_MAGAZINE ,
    "magazine d'information" => $NEWS_MAGAZINE ,
    "magazine de société"  => $SOCIAL ,
    "magazine politique"  => $SOCIAL ,
    "société"            => $SOCIAL ,
    "débat parlementaire" => $SOCIAL ,
    "magazine de services"  => $MAGAZINE ,
    "opéra"              => $OPERA ,
    "Série"              => $MOVIE  ,
    "Spectacle"          => $PERFORMING ,
    "Sport"              => $SPORT ,
    "Talk show"          => $TALKSHOW ,
    "talk-show"          => $TALKSHOW ,
    "Téléfilm"           => $MOVIE ,
    "télé-réalité"       => $VARIETY ,
    "téléréalité"        => $VARIETY ,
    "tiercé"             => $SPORT ,
    "divers"             => $VARIETY ,
    "variétés"             => $VARIETY ,
    "Emission politique"   => $SOCIAL,
    "Politique"            => $SOCIAL ,
    "Divers"             => $VARIETY ,
    "Religion"           => $HISTORICAL ,
    "histoire"           => $HISTORICAL ,
    "Musique"            => $MUSIC ,
    "Fitness"           => $FITNESS ,
    "Sports"           => $SPORT ,
    "multisports"           => $SPORT ,
    "Clip"           => $MUSIC ,
    "Anime"           => $CARTOON ,
    "Humour"           => $COMEDY ,
    "humour"           => $COMEDY ,
    "comédie"           => $COMEDY ,
    "météo"              => $WEATHER ,
    "clips"              => $MUSIC ,
    "dessin animé"       => $CARTOON ,
    "série d'animation"  => $CARTOON ,
    "découvertes"        => $MAGAZINE ,
    "série jeunesse"     => $KIDS  ,
    "emission jeunesse"     => $KIDS  ,
    "dessin animé jeunesse"     => $KIDS  ,
    "série policière"    => $THRILLER ,
    "série humoristique"    => $COMEDY ,
    "jeu"                => $GAME ,
    "feuilleton sentimental"    => $ROMANCE ,
    "série sentimentale"    => $ROMANCE ,
    "série réaliste"    => $HISTORICAL ,
    "téléréalité"        => $SHOW ,
    "divertissement-humour"  => $SHOW ,
    "divertissement"  => $SHOW ,
    "nature"  => $NATURE ,
    "magazine littéraire" => $ARTSMAG ,
    "magazine culturel" => $ARTSMAG ,
    "magazine de la gastronomie" => $COOKING ,
    "magazine sportif" => $SPORT_MAGAZINE ,
    "football" => $FOOTBALL ,
    "culture" => $CULTURE ,
    "ski" => $SPORT_WINTER ,
    "hippisme" => $EQUESTRIAN ,
    "cinéma" => $FILM ,
    "magazine du cinéma" => $FILM ,
    "magazine jeunesse" => $EDUCATIONAL ,
    "magazine de télé-achat" => $SHOPPING ,
    "animalier" => $NATURE,
 ) ; 

my $PRE  = '<category lang=\"fr\">' ;
my $POST = '</category>'  ;

sub myfilter {
  my ($a) = @_;
  if ( exists $REPLACE{$a} ) {     
      return $REPLACE{$a} ;
  } else {
      print STDERR "Warning: Unmanaged category: '$a'\n" ;
      return $a ;
  }
}

while (<>) {
    my $line = $_ ;
    $line =~ s/($PRE)(.*)($POST)/"$1".myfilter("$2")."$3"/ge ;
    print $line;
}

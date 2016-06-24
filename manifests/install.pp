class dc_depman::install{
  if $::dc_depman::depManName == "maven"{ 
	   include dc_depman::maven::install
  }
}
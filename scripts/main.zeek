module Intel;

export {
  redef record Intel::MetaData +={
    confidence: double &optional;
    firstseen: string &optional;
    lastseen: string &optional;
    associated: string &optional;
    category: string &optional;
  };

  redef record Info += {
    desc: string &optional &log;
    url: string &optional &log;
    confidence: double &optional &log;
    firstseen: string &optional &log;
    lastseen: string &optional &log;
    associated: string &optional &log;
    category: string &optional &log;
  };
}

hook extend_match(info: Info, s: Seen, items: set[Item]) &priority=5
	{
	for ( item in items )
		{
		if ( item$meta?$desc )
			info$desc = item$meta$desc;
		}
	}

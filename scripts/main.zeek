@load base/frameworks/intel

module ExtendIntel;

export {
  redef record Intel::MetaData +={
    desc: string &optional &log;
    url: string &optional &log;
    confidence: double &optional &log;
    firstseen: string &optional &log;
    lastseen: string &optional &log;
    associated: string &optional &log;
    category: string &optional &log;
  }
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "nav_parent.h"



nav_parent_t::nav_parent_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, nav_parent_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void nav_parent_t::_read() {
    m_header = new header_obj_t(m__io, this, m__root);
    m_index = new index_obj_t(m__io, this, m__root);
}

nav_parent_t::~nav_parent_t() {
    // header: UserTypeInstream(List(header_obj),None), isArray=false, hasRaw=false, hasIO=false
    delete m_header;
    // index: UserTypeInstream(List(index_obj),None), isArray=false, hasRaw=false, hasIO=false
    delete m_index;
}

nav_parent_t::header_obj_t::header_obj_t(kaitai::kstream *p_io, nav_parent_t* p_parent, nav_parent_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nav_parent_t::header_obj_t::_read() {
    m_qty_entries = m__io->read_u4le();
    m_filename_len = m__io->read_u4le();
}

nav_parent_t::header_obj_t::~header_obj_t() {
    // qty_entries: IntMultiType(false,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // filename_len: IntMultiType(false,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
}

nav_parent_t::index_obj_t::index_obj_t(kaitai::kstream *p_io, nav_parent_t* p_parent, nav_parent_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nav_parent_t::index_obj_t::_read() {
    m_magic = m__io->read_bytes(4);
    int l_entries = _parent()->header()->qty_entries();
    m_entries = new std::vector<entry_t*>();
    m_entries->reserve(l_entries);
    for (int i = 0; i < l_entries; i++) {
        m_entries->push_back(new entry_t(m__io, this, m__root));
    }
}

nav_parent_t::index_obj_t::~index_obj_t() {
    // magic: BytesLimitType(IntNum(4),None,false,None,None), isArray=false, hasRaw=false, hasIO=false
    // entries: UserTypeInstream(List(entry),None), isArray=true, hasRaw=false, hasIO=false
    for (std::vector<entry_t*>::iterator it = m_entries->begin(); it != m_entries->end(); ++it) {
        delete *it;
    }
    delete m_entries;
}

nav_parent_t::entry_t::entry_t(kaitai::kstream *p_io, nav_parent_t::index_obj_t* p_parent, nav_parent_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void nav_parent_t::entry_t::_read() {
    m_filename = kaitai::kstream::bytes_to_str(m__io->read_bytes(_parent()->_parent()->header()->filename_len()), std::string("UTF-8"));
}

nav_parent_t::entry_t::~entry_t() {
    // filename: StrFromBytesType(BytesLimitType(Attribute(Attribute(Attribute(Name(identifier(_parent)),identifier(_parent)),identifier(header)),identifier(filename_len)),None,false,None,None),UTF-8), isArray=false, hasRaw=false, hasIO=false
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "repeat_n_strz_double.h"



repeat_n_strz_double_t::repeat_n_strz_double_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, repeat_n_strz_double_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void repeat_n_strz_double_t::_read() {
    m_qty = m__io->read_u4le();
    int l_lines1 = (qty() / 2);
    m_lines1 = new std::vector<std::string>();
    m_lines1->reserve(l_lines1);
    for (int i = 0; i < l_lines1; i++) {
        m_lines1->push_back(kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8")));
    }
    int l_lines2 = (qty() / 2);
    m_lines2 = new std::vector<std::string>();
    m_lines2->reserve(l_lines2);
    for (int i = 0; i < l_lines2; i++) {
        m_lines2->push_back(kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8")));
    }
}

repeat_n_strz_double_t::~repeat_n_strz_double_t() {
    // qty: IntMultiType(false,Width4,Some(LittleEndian)), isArray=false, hasRaw=false, hasIO=false
    // lines1: StrFromBytesType(BytesTerminatedType(0,false,true,true,None),UTF-8), isArray=true, hasRaw=false, hasIO=false
    delete m_lines1;
    // lines2: StrFromBytesType(BytesTerminatedType(0,false,true,true,None),UTF-8), isArray=true, hasRaw=false, hasIO=false
    delete m_lines2;
}

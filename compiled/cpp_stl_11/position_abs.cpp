// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "position_abs.h"



position_abs_t::position_abs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, position_abs_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_index = 0;
    f_index = false;
    _read();
}

void position_abs_t::_read() {
    m_index_offset = m__io->read_u4le();
}

position_abs_t::~position_abs_t() {
    if (f_index) {
        delete m_index;
    }
}

position_abs_t::index_obj_t::index_obj_t(kaitai::kstream* p__io, position_abs_t* p__parent, position_abs_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void position_abs_t::index_obj_t::_read() {
    m_entry = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8"));
}

position_abs_t::index_obj_t::~index_obj_t() {
}

position_abs_t::index_obj_t* position_abs_t::index() {
    if (f_index)
        return m_index;
    std::streampos _pos = m__io->pos();
    m__io->seek(index_offset());
    m_index = new index_obj_t(m__io, this, m__root);
    m__io->seek(_pos);
    f_index = true;
    return m_index;
}

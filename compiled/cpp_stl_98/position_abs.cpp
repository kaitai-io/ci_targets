// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "position_abs.h"

position_abs_t::position_abs_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, position_abs_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_index = 0;
    f_index = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void position_abs_t::_read() {
    m_index_offset = m__io->read_u4le();
}

position_abs_t::~position_abs_t() {
    _clean_up();
}

void position_abs_t::_clean_up() {
    if (f_index) {
        if (m_index) {
            delete m_index; m_index = 0;
        }
    }
}

position_abs_t::index_obj_t::index_obj_t(kaitai::kstream* p__io, position_abs_t* p__parent, position_abs_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void position_abs_t::index_obj_t::_read() {
    m_entry = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), "UTF-8");
}

position_abs_t::index_obj_t::~index_obj_t() {
    _clean_up();
}

void position_abs_t::index_obj_t::_clean_up() {
}

position_abs_t::index_obj_t* position_abs_t::index() {
    if (f_index)
        return m_index;
    f_index = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(index_offset());
    m_index = new index_obj_t(m__io, this, m__root);
    m__io->seek(_pos);
    return m_index;
}

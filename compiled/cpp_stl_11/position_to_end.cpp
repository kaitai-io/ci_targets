// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "position_to_end.h"

position_to_end_t::position_to_end_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, position_to_end_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_index = nullptr;
    f_index = false;
    _read();
}

void position_to_end_t::_read() {
}

position_to_end_t::~position_to_end_t() {
    _clean_up();
}

void position_to_end_t::_clean_up() {
    if (f_index) {
    }
}

position_to_end_t::index_obj_t::index_obj_t(kaitai::kstream* p__io, position_to_end_t* p__parent, position_to_end_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void position_to_end_t::index_obj_t::_read() {
    m_foo = m__io->read_u4le();
    m_bar = m__io->read_u4le();
}

position_to_end_t::index_obj_t::~index_obj_t() {
    _clean_up();
}

void position_to_end_t::index_obj_t::_clean_up() {
}

position_to_end_t::index_obj_t* position_to_end_t::index() {
    if (f_index)
        return m_index.get();
    f_index = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(_io()->size() - 8);
    m_index = std::unique_ptr<index_obj_t>(new index_obj_t(m__io, this, m__root));
    m__io->seek(_pos);
    return m_index.get();
}

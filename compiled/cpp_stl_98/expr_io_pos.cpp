// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "expr_io_pos.h"

expr_io_pos_t::expr_io_pos_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_io_pos_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_substream1 = 0;
    m__io__raw_substream1 = 0;
    m_substream2 = 0;
    m__io__raw_substream2 = 0;

    try {
        _read();
    } catch(...) {
        this->~expr_io_pos_t();
        throw;
    }
}

void expr_io_pos_t::_read() {
    m__raw_substream1 = m__io->read_bytes(16);
    m__io__raw_substream1 = new kaitai::kstream(m__raw_substream1);
    m_substream1 = new all_plus_number_t(m__io__raw_substream1, this, m__root);
    m__raw_substream2 = m__io->read_bytes(14);
    m__io__raw_substream2 = new kaitai::kstream(m__raw_substream2);
    m_substream2 = new all_plus_number_t(m__io__raw_substream2, this, m__root);
}

expr_io_pos_t::~expr_io_pos_t() {
    delete m__io__raw_substream1;
    delete m_substream1;
    delete m__io__raw_substream2;
    delete m_substream2;
}

expr_io_pos_t::all_plus_number_t::all_plus_number_t(kaitai::kstream* p__io, expr_io_pos_t* p__parent, expr_io_pos_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        this->~all_plus_number_t();
        throw;
    }
}

void expr_io_pos_t::all_plus_number_t::_read() {
    m_my_str = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8"));
    m_body = m__io->read_bytes(((_io()->size() - _io()->pos()) - 2));
    m_number = m__io->read_u2le();
}

expr_io_pos_t::all_plus_number_t::~all_plus_number_t() {
}

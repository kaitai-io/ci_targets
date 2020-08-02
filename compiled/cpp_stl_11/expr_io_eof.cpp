// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "expr_io_eof.h"

expr_io_eof_t::expr_io_eof_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, expr_io_eof_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_substream1 = nullptr;
    m__io__raw_substream1 = nullptr;
    m_substream2 = nullptr;
    m__io__raw_substream2 = nullptr;
    _read();
}

void expr_io_eof_t::_read() {
    m__raw_substream1 = m__io->read_bytes(4);
    m__io__raw_substream1 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_substream1));
    m_substream1 = std::unique_ptr<one_or_two_t>(new one_or_two_t(m__io__raw_substream1.get(), this, m__root));
    m__raw_substream2 = m__io->read_bytes(8);
    m__io__raw_substream2 = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_substream2));
    m_substream2 = std::unique_ptr<one_or_two_t>(new one_or_two_t(m__io__raw_substream2.get(), this, m__root));
}

expr_io_eof_t::~expr_io_eof_t() {
    _cleanUp();
}

void expr_io_eof_t::_cleanUp() {
}

expr_io_eof_t::one_or_two_t::one_or_two_t(kaitai::kstream* p__io, expr_io_eof_t* p__parent, expr_io_eof_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_reflect_eof = false;
    _read();
}

void expr_io_eof_t::one_or_two_t::_read() {
    m_one = m__io->read_u4le();
    n_two = true;
    if (!(_io()->is_eof())) {
        n_two = false;
        m_two = m__io->read_u4le();
    }
}

expr_io_eof_t::one_or_two_t::~one_or_two_t() {
    _cleanUp();
}

void expr_io_eof_t::one_or_two_t::_cleanUp() {
    if (!n_two) {
    }
}

bool expr_io_eof_t::one_or_two_t::reflect_eof() {
    if (f_reflect_eof)
        return m_reflect_eof;
    m_reflect_eof = _io()->is_eof();
    f_reflect_eof = true;
    return m_reflect_eof;
}

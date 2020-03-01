// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "expr_io_eof.h"

exprIoEof_t::exprIoEof_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, exprIoEof_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_substream1 = nullptr;
    m__io__raw_substream1 = nullptr;
    m_substream2 = nullptr;
    m__io__raw_substream2 = nullptr;
    _read();
}

void exprIoEof_t::_read() {
    m__raw_substream1 = m__io->read_bytes(4);
    m__io__raw_substream1 = new kaitai::kstream(m__raw_substream1);
    m_substream1 = std::unique_ptr<oneOrTwo_t>(new oneOrTwo_t(m__io__raw_substream1, this, m__root));
    m__raw_substream2 = m__io->read_bytes(8);
    m__io__raw_substream2 = new kaitai::kstream(m__raw_substream2);
    m_substream2 = std::unique_ptr<oneOrTwo_t>(new oneOrTwo_t(m__io__raw_substream2, this, m__root));
}

exprIoEof_t::~exprIoEof_t() {
    delete m__io__raw_substream1;
    delete m__io__raw_substream2;
}

exprIoEof_t::oneOrTwo_t::oneOrTwo_t(kaitai::kstream* p__io, exprIoEof_t* p__parent, exprIoEof_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_reflect_eof = false;
    _read();
}

void exprIoEof_t::oneOrTwo_t::_read() {
    m_one = m__io->read_u4le();
    n_two = true;
    if (!(_io()->is_eof())) {
        n_two = false;
        m_two = m__io->read_u4le();
    }
}

exprIoEof_t::oneOrTwo_t::~oneOrTwo_t() {
    if (!n_two) {
    }
}

bool exprIoEof_t::oneOrTwo_t::reflect_eof() {
    if (f_reflect_eof)
        return m_reflect_eof;
    m_reflect_eof = _io()->is_eof();
    f_reflect_eof = true;
    return m_reflect_eof;
}

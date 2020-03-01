// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "expr_io_pos.h"

exprIoPos_t::exprIoPos_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, exprIoPos_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_substream1 = nullptr;
    m__io__raw_substream1 = nullptr;
    m_substream2 = nullptr;
    m__io__raw_substream2 = nullptr;
    _read();
}

void exprIoPos_t::_read() {
    m__raw_substream1 = m__io->read_bytes(16);
    m__io__raw_substream1 = new kaitai::kstream(m__raw_substream1);
    m_substream1 = std::unique_ptr<allPlusNumber_t>(new allPlusNumber_t(m__io__raw_substream1, this, m__root));
    m__raw_substream2 = m__io->read_bytes(14);
    m__io__raw_substream2 = new kaitai::kstream(m__raw_substream2);
    m_substream2 = std::unique_ptr<allPlusNumber_t>(new allPlusNumber_t(m__io__raw_substream2, this, m__root));
}

exprIoPos_t::~exprIoPos_t() {
    delete m__io__raw_substream1;
    delete m__io__raw_substream2;
}

exprIoPos_t::allPlusNumber_t::allPlusNumber_t(kaitai::kstream* p__io, exprIoPos_t* p__parent, exprIoPos_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void exprIoPos_t::allPlusNumber_t::_read() {
    m_my_str = kaitai::kstream::bytes_to_str(m__io->read_bytes_term(0, false, true, true), std::string("UTF-8"));
    m_body = m__io->read_bytes(((_io()->size() - _io()->pos()) - 2));
    m_number = m__io->read_u2le();
}

exprIoPos_t::allPlusNumber_t::~allPlusNumber_t() {
}

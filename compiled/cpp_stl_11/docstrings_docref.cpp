// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "docstrings_docref.h"

docstringsDocref_t::docstringsDocref_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, docstringsDocref_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    f_foo = false;
    f_parse_inst = false;
    _read();
}

void docstringsDocref_t::_read() {
    m_one = m__io->read_u1();
    m_two = m__io->read_u1();
    m_three = m__io->read_u1();
}

docstringsDocref_t::~docstringsDocref_t() {
    if (f_parse_inst) {
    }
}

bool docstringsDocref_t::foo() {
    if (f_foo)
        return m_foo;
    m_foo = true;
    f_foo = true;
    return m_foo;
}

uint8_t docstringsDocref_t::parse_inst() {
    if (f_parse_inst)
        return m_parse_inst;
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_parse_inst = m__io->read_u1();
    m__io->seek(_pos);
    f_parse_inst = true;
    return m_parse_inst;
}

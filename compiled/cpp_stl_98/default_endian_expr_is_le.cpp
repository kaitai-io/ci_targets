// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "default_endian_expr_is_le.h"
#include "kaitai/exceptions.h"

defaultEndianExprIsLe_t::defaultEndianExprIsLe_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, defaultEndianExprIsLe_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_docs = 0;
    _read();
}

void defaultEndianExprIsLe_t::_read() {
    m_docs = new std::vector<doc_t*>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_docs->push_back(new doc_t(m__io, this, m__root));
            i++;
        }
    }
}

defaultEndianExprIsLe_t::~defaultEndianExprIsLe_t() {
    for (std::vector<doc_t*>::iterator it = m_docs->begin(); it != m_docs->end(); ++it) {
        delete *it;
    }
    delete m_docs;
}

defaultEndianExprIsLe_t::doc_t::doc_t(kaitai::kstream* p__io, defaultEndianExprIsLe_t* p__parent, defaultEndianExprIsLe_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_main = 0;
    _read();
}

void defaultEndianExprIsLe_t::doc_t::_read() {
    m_indicator = m__io->read_bytes(2);
    m_main = new mainObj_t(m__io, this, m__root);
}

defaultEndianExprIsLe_t::doc_t::~doc_t() {
    delete m_main;
}

defaultEndianExprIsLe_t::doc_t::mainObj_t::mainObj_t(kaitai::kstream* p__io, defaultEndianExprIsLe_t::doc_t* p__parent, defaultEndianExprIsLe_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m__is_le = -1;
    _read();
}

void defaultEndianExprIsLe_t::doc_t::mainObj_t::_read() {
    {
        std::string on = _parent()->indicator();
        if (on == std::string("\x49\x49", 2)) {
            m__is_le = true;
        }
        else {
            m__is_le = false;
        }
    }

    if (m__is_le == -1) {
        throw kaitai::undecided_endianness_error("/types/doc/types/main_obj");
    } else if (m__is_le == 1) {
        _read_le();
    } else {
        _read_be();
    }
}

void defaultEndianExprIsLe_t::doc_t::mainObj_t::_read_le() {
    m_some_int = m__io->read_u4le();
    m_some_int_be = m__io->read_u2be();
    m_some_int_le = m__io->read_u2le();
}

void defaultEndianExprIsLe_t::doc_t::mainObj_t::_read_be() {
    m_some_int = m__io->read_u4be();
    m_some_int_be = m__io->read_u2be();
    m_some_int_le = m__io->read_u2le();
}

defaultEndianExprIsLe_t::doc_t::mainObj_t::~mainObj_t() {
}

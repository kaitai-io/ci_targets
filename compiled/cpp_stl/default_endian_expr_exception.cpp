// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "default_endian_expr_exception.h"

#include <stdexcept>

default_endian_expr_exception_t::default_endian_expr_exception_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, default_endian_expr_exception_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void default_endian_expr_exception_t::_read() {
    m_docs = new std::vector<doc_t*>();
    while (!m__io->is_eof()) {
        m_docs->push_back(new doc_t(m__io, this, m__root));
    }
}

default_endian_expr_exception_t::~default_endian_expr_exception_t() {
    for (std::vector<doc_t*>::iterator it = m_docs->begin(); it != m_docs->end(); ++it) {
        delete *it;
    }
    delete m_docs;
}

default_endian_expr_exception_t::doc_t::doc_t(kaitai::kstream *p_io, default_endian_expr_exception_t* p_parent, default_endian_expr_exception_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void default_endian_expr_exception_t::doc_t::_read() {
    m_indicator = m__io->read_bytes(2);
    m_main = new main_obj_t(m__io, this, m__root);
}

default_endian_expr_exception_t::doc_t::~doc_t() {
    delete m_main;
}

default_endian_expr_exception_t::doc_t::main_obj_t::main_obj_t(kaitai::kstream *p_io, default_endian_expr_exception_t::doc_t* p_parent, default_endian_expr_exception_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m__is_le = -1;
    {
        std::string on = _parent()->indicator();
        if (on == std::string("\x49\x49", 2)) {
            m__is_le = true;
        }
        else if (on == std::string("\x4D\x4D", 2)) {
            m__is_le = false;
        }
    }

    if (m__is_le == -1) {
        throw std::runtime_error("unable to decide on endianness");
    } else if (m__is_le == 1) {
        _read_le();
    } else {
        _read_be();
    }
}

void default_endian_expr_exception_t::doc_t::main_obj_t::_read_le() {
    m_some_int = m__io->read_u4le();
    m_some_int_be = m__io->read_u2be();
    m_some_int_le = m__io->read_u2le();
}

void default_endian_expr_exception_t::doc_t::main_obj_t::_read_be() {
    m_some_int = m__io->read_u4be();
    m_some_int_be = m__io->read_u2be();
    m_some_int_le = m__io->read_u2le();
}

default_endian_expr_exception_t::doc_t::main_obj_t::~main_obj_t() {
}

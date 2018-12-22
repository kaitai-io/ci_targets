// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "default_endian_expr_is_le.h"

#include <memory>
#include <stdexcept>

default_endian_expr_is_le_t::default_endian_expr_is_le_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, default_endian_expr_is_le_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_docs = nullptr;
    _read();
}

void default_endian_expr_is_le_t::_read() {
    m_docs = new std::vector<std::unique_ptr<doc_t>>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_docs->push_back(std::move(std::make_unique<doc_t>(m__io, this, m__root)));
            i++;
        }
    }
}

default_endian_expr_is_le_t::~default_endian_expr_is_le_t() {
}

default_endian_expr_is_le_t::doc_t::doc_t(kaitai::kstream* p__io, default_endian_expr_is_le_t* p__parent, default_endian_expr_is_le_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_main = nullptr;
    _read();
}

void default_endian_expr_is_le_t::doc_t::_read() {
    m_indicator = m__io->read_bytes(2);
    m_main = std::make_unique<main_obj_t>(m__io, this, m__root);
}

default_endian_expr_is_le_t::doc_t::~doc_t() {
}

default_endian_expr_is_le_t::doc_t::main_obj_t::main_obj_t(kaitai::kstream* p__io, default_endian_expr_is_le_t::doc_t* p__parent, default_endian_expr_is_le_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m__is_le = -1;
    _read();
}

void default_endian_expr_is_le_t::doc_t::main_obj_t::_read() {
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
        throw std::runtime_error("unable to decide on endianness");
    } else if (m__is_le == 1) {
        _read_le();
    } else {
        _read_be();
    }
}

void default_endian_expr_is_le_t::doc_t::main_obj_t::_read_le() {
    m_some_int = m__io->read_u4le();
    m_some_int_be = m__io->read_u2be();
    m_some_int_le = m__io->read_u2le();
}

void default_endian_expr_is_le_t::doc_t::main_obj_t::_read_be() {
    m_some_int = m__io->read_u4be();
    m_some_int_be = m__io->read_u2be();
    m_some_int_le = m__io->read_u2le();
}

default_endian_expr_is_le_t::doc_t::main_obj_t::~main_obj_t() {
}

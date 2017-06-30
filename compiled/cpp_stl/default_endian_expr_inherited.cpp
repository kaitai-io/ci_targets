// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "default_endian_expr_inherited.h"

#include <stdexcept>

default_endian_expr_inherited_t::default_endian_expr_inherited_t(kaitai::kstream *p_io, kaitai::kstruct* p_parent, default_endian_expr_inherited_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = this;
    _read();
}

void default_endian_expr_inherited_t::_read() {
    m_docs = new std::vector<doc_t*>();
    while (!m__io->is_eof()) {
        m_docs->push_back(new doc_t(m__io, this, m__root));
    }
}

default_endian_expr_inherited_t::~default_endian_expr_inherited_t() {
    for (std::vector<doc_t*>::iterator it = m_docs->begin(); it != m_docs->end(); ++it) {
        delete *it;
    }
    delete m_docs;
}

default_endian_expr_inherited_t::doc_t::doc_t(kaitai::kstream *p_io, default_endian_expr_inherited_t* p_parent, default_endian_expr_inherited_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    _read();
}

void default_endian_expr_inherited_t::doc_t::_read() {
    m_indicator = m__io->read_bytes(2);
    m_main = new main_obj_t(m__io, this, m__root);
}

default_endian_expr_inherited_t::doc_t::~doc_t() {
    delete m_main;
}

default_endian_expr_inherited_t::doc_t::main_obj_t::main_obj_t(kaitai::kstream *p_io, default_endian_expr_inherited_t::doc_t* p_parent, default_endian_expr_inherited_t *p_root) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m__is_le = -1;
    _read();
}

void default_endian_expr_inherited_t::doc_t::main_obj_t::_read() {
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

void default_endian_expr_inherited_t::doc_t::main_obj_t::_read_le() {
    m_insides = new sub_obj_t(m__io, this, m__root, m__is_le);
}

void default_endian_expr_inherited_t::doc_t::main_obj_t::_read_be() {
    m_insides = new sub_obj_t(m__io, this, m__root, m__is_le);
}

default_endian_expr_inherited_t::doc_t::main_obj_t::~main_obj_t() {
    delete m_insides;
}

default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t::sub_obj_t(kaitai::kstream *p_io, default_endian_expr_inherited_t::doc_t::main_obj_t* p_parent, default_endian_expr_inherited_t *p_root, int p_is_le) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m__is_le = p_is_le;
    _read();
}

void default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t::_read() {

    if (m__is_le == -1) {
        throw std::runtime_error("unable to decide on endianness");
    } else if (m__is_le == 1) {
        _read_le();
    } else {
        _read_be();
    }
}

void default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t::_read_le() {
    m_some_int = m__io->read_u4le();
    m_more = new subsub_obj_t(m__io, this, m__root, m__is_le);
}

void default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t::_read_be() {
    m_some_int = m__io->read_u4be();
    m_more = new subsub_obj_t(m__io, this, m__root, m__is_le);
}

default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t::~sub_obj_t() {
    delete m_more;
}

default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t::subsub_obj_t::subsub_obj_t(kaitai::kstream *p_io, default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t* p_parent, default_endian_expr_inherited_t *p_root, int p_is_le) : kaitai::kstruct(p_io) {
    m__parent = p_parent;
    m__root = p_root;
    m__is_le = p_is_le;
    f_some_inst = false;
    _read();
}

void default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t::subsub_obj_t::_read() {

    if (m__is_le == -1) {
        throw std::runtime_error("unable to decide on endianness");
    } else if (m__is_le == 1) {
        _read_le();
    } else {
        _read_be();
    }
}

void default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t::subsub_obj_t::_read_le() {
    m_some_int1 = m__io->read_u2le();
    m_some_int2 = m__io->read_u2le();
}

void default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t::subsub_obj_t::_read_be() {
    m_some_int1 = m__io->read_u2be();
    m_some_int2 = m__io->read_u2be();
}

default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t::subsub_obj_t::~subsub_obj_t() {
}

uint32_t default_endian_expr_inherited_t::doc_t::main_obj_t::sub_obj_t::subsub_obj_t::some_inst() {
    if (f_some_inst)
        return m_some_inst;
    std::streampos _pos = m__io->pos();
    m__io->seek(2);
    if (m__is_le == 1) {
        m_some_inst = m__io->read_u4le();
    } else {
        m_some_inst = m__io->read_u4be();
    }
    m__io->seek(_pos);
    f_some_inst = true;
    return m_some_inst;
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "default_endian_expr_is_be.h"
#include "kaitai/exceptions.h"

default_endian_expr_is_be_t::default_endian_expr_is_be_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, default_endian_expr_is_be_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_docs = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void default_endian_expr_is_be_t::_read() {
    m_docs = new std::vector<doc_t*>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_docs->push_back(new doc_t(m__io, this, m__root));
            i++;
        }
    }
}

default_endian_expr_is_be_t::~default_endian_expr_is_be_t() {
    _clean_up();
}

void default_endian_expr_is_be_t::_clean_up() {
    if (m_docs) {
        for (std::vector<doc_t*>::iterator it = m_docs->begin(); it != m_docs->end(); ++it) {
            delete *it;
        }
        delete m_docs; m_docs = 0;
    }
}

default_endian_expr_is_be_t::doc_t::doc_t(kaitai::kstream* p__io, default_endian_expr_is_be_t* p__parent, default_endian_expr_is_be_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_main = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void default_endian_expr_is_be_t::doc_t::_read() {
    m_indicator = m__io->read_bytes(2);
    m_main = new main_obj_t(m__io, this, m__root);
}

default_endian_expr_is_be_t::doc_t::~doc_t() {
    _clean_up();
}

void default_endian_expr_is_be_t::doc_t::_clean_up() {
    if (m_main) {
        delete m_main; m_main = 0;
    }
}

default_endian_expr_is_be_t::doc_t::main_obj_t::main_obj_t(kaitai::kstream* p__io, default_endian_expr_is_be_t::doc_t* p__parent, default_endian_expr_is_be_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m__is_le = -1;
    m_inst_sub = 0;
    f_inst_int = false;
    f_inst_sub = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void default_endian_expr_is_be_t::doc_t::main_obj_t::_read() {
    {
        std::string on = _parent()->indicator();
        if (on == std::string("\x4D\x4D", 2)) {
            m__is_le = false;
        }
        else {
            m__is_le = true;
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

void default_endian_expr_is_be_t::doc_t::main_obj_t::_read_le() {
    m_some_int = m__io->read_u4le();
    m_some_int_be = m__io->read_u2be();
    m_some_int_le = m__io->read_u2le();
}

void default_endian_expr_is_be_t::doc_t::main_obj_t::_read_be() {
    m_some_int = m__io->read_u4be();
    m_some_int_be = m__io->read_u2be();
    m_some_int_le = m__io->read_u2le();
}

default_endian_expr_is_be_t::doc_t::main_obj_t::~main_obj_t() {
    _clean_up();
}

void default_endian_expr_is_be_t::doc_t::main_obj_t::_clean_up() {
    if (f_inst_int) {
    }
    if (f_inst_sub) {
        if (m_inst_sub) {
            delete m_inst_sub; m_inst_sub = 0;
        }
    }
}

default_endian_expr_is_be_t::doc_t::main_obj_t::sub_main_obj_t::sub_main_obj_t(kaitai::kstream* p__io, default_endian_expr_is_be_t::doc_t::main_obj_t* p__parent, default_endian_expr_is_be_t* p__root, int p_is_le) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m__is_le = p_is_le;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void default_endian_expr_is_be_t::doc_t::main_obj_t::sub_main_obj_t::_read() {

    if (m__is_le == -1) {
        throw kaitai::undecided_endianness_error("/types/doc/types/main_obj/types/sub_main_obj");
    } else if (m__is_le == 1) {
        _read_le();
    } else {
        _read_be();
    }
}

void default_endian_expr_is_be_t::doc_t::main_obj_t::sub_main_obj_t::_read_le() {
    m_foo = m__io->read_u4le();
}

void default_endian_expr_is_be_t::doc_t::main_obj_t::sub_main_obj_t::_read_be() {
    m_foo = m__io->read_u4be();
}

default_endian_expr_is_be_t::doc_t::main_obj_t::sub_main_obj_t::~sub_main_obj_t() {
    _clean_up();
}

void default_endian_expr_is_be_t::doc_t::main_obj_t::sub_main_obj_t::_clean_up() {
}

uint32_t default_endian_expr_is_be_t::doc_t::main_obj_t::inst_int() {
    if (f_inst_int)
        return m_inst_int;
    f_inst_int = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(2);
    if (m__is_le == 1) {
        m_inst_int = m__io->read_u4le();
    } else {
        m_inst_int = m__io->read_u4be();
    }
    m__io->seek(_pos);
    return m_inst_int;
}

default_endian_expr_is_be_t::doc_t::main_obj_t::sub_main_obj_t* default_endian_expr_is_be_t::doc_t::main_obj_t::inst_sub() {
    if (f_inst_sub)
        return m_inst_sub;
    f_inst_sub = true;
    std::streampos _pos = m__io->pos();
    m__io->seek(2);
    if (m__is_le == 1) {
        m_inst_sub = new sub_main_obj_t(m__io, this, m__root, m__is_le);
    } else {
        m_inst_sub = new sub_main_obj_t(m__io, this, m__root, m__is_le);
    }
    m__io->seek(_pos);
    return m_inst_sub;
}

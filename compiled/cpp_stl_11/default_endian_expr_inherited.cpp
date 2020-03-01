// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "default_endian_expr_inherited.h"
#include "kaitai/exceptions.h"

defaultEndianExprInherited_t::defaultEndianExprInherited_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, defaultEndianExprInherited_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_docs = nullptr;
    _read();
}

void defaultEndianExprInherited_t::_read() {
    m_docs = std::unique_ptr<std::vector<std::unique_ptr<doc_t>>>(new std::vector<std::unique_ptr<doc_t>>());
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_docs->push_back(std::move(std::unique_ptr<doc_t>(new doc_t(m__io, this, m__root))));
            i++;
        }
    }
}

defaultEndianExprInherited_t::~defaultEndianExprInherited_t() {
}

defaultEndianExprInherited_t::doc_t::doc_t(kaitai::kstream* p__io, defaultEndianExprInherited_t* p__parent, defaultEndianExprInherited_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_main = nullptr;
    _read();
}

void defaultEndianExprInherited_t::doc_t::_read() {
    m_indicator = m__io->read_bytes(2);
    m_main = std::unique_ptr<mainObj_t>(new mainObj_t(m__io, this, m__root));
}

defaultEndianExprInherited_t::doc_t::~doc_t() {
}

defaultEndianExprInherited_t::doc_t::mainObj_t::mainObj_t(kaitai::kstream* p__io, defaultEndianExprInherited_t::doc_t* p__parent, defaultEndianExprInherited_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m__is_le = -1;
    m_insides = nullptr;
    _read();
}

void defaultEndianExprInherited_t::doc_t::mainObj_t::_read() {
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

void defaultEndianExprInherited_t::doc_t::mainObj_t::_read_le() {
    m_insides = std::unique_ptr<subObj_t>(new subObj_t(m__io, this, m__root, m__is_le));
}

void defaultEndianExprInherited_t::doc_t::mainObj_t::_read_be() {
    m_insides = std::unique_ptr<subObj_t>(new subObj_t(m__io, this, m__root, m__is_le));
}

defaultEndianExprInherited_t::doc_t::mainObj_t::~mainObj_t() {
}

defaultEndianExprInherited_t::doc_t::mainObj_t::subObj_t::subObj_t(kaitai::kstream* p__io, defaultEndianExprInherited_t::doc_t::mainObj_t* p__parent, defaultEndianExprInherited_t* p__root, int p_is_le) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m__is_le = p_is_le;
    m_more = nullptr;
    _read();
}

void defaultEndianExprInherited_t::doc_t::mainObj_t::subObj_t::_read() {

    if (m__is_le == -1) {
        throw kaitai::undecided_endianness_error("/types/doc/types/main_obj/types/sub_obj");
    } else if (m__is_le == 1) {
        _read_le();
    } else {
        _read_be();
    }
}

void defaultEndianExprInherited_t::doc_t::mainObj_t::subObj_t::_read_le() {
    m_some_int = m__io->read_u4le();
    m_more = std::unique_ptr<subsubObj_t>(new subsubObj_t(m__io, this, m__root, m__is_le));
}

void defaultEndianExprInherited_t::doc_t::mainObj_t::subObj_t::_read_be() {
    m_some_int = m__io->read_u4be();
    m_more = std::unique_ptr<subsubObj_t>(new subsubObj_t(m__io, this, m__root, m__is_le));
}

defaultEndianExprInherited_t::doc_t::mainObj_t::subObj_t::~subObj_t() {
}

defaultEndianExprInherited_t::doc_t::mainObj_t::subObj_t::subsubObj_t::subsubObj_t(kaitai::kstream* p__io, defaultEndianExprInherited_t::doc_t::mainObj_t::subObj_t* p__parent, defaultEndianExprInherited_t* p__root, int p_is_le) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m__is_le = p_is_le;
    f_some_inst = false;
    _read();
}

void defaultEndianExprInherited_t::doc_t::mainObj_t::subObj_t::subsubObj_t::_read() {

    if (m__is_le == -1) {
        throw kaitai::undecided_endianness_error("/types/doc/types/main_obj/types/sub_obj/types/subsub_obj");
    } else if (m__is_le == 1) {
        _read_le();
    } else {
        _read_be();
    }
}

void defaultEndianExprInherited_t::doc_t::mainObj_t::subObj_t::subsubObj_t::_read_le() {
    m_some_int1 = m__io->read_u2le();
    m_some_int2 = m__io->read_u2le();
}

void defaultEndianExprInherited_t::doc_t::mainObj_t::subObj_t::subsubObj_t::_read_be() {
    m_some_int1 = m__io->read_u2be();
    m_some_int2 = m__io->read_u2be();
}

defaultEndianExprInherited_t::doc_t::mainObj_t::subObj_t::subsubObj_t::~subsubObj_t() {
    if (f_some_inst) {
    }
}

uint32_t defaultEndianExprInherited_t::doc_t::mainObj_t::subObj_t::subsubObj_t::some_inst() {
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

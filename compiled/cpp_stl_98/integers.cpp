// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "integers.h"
#include "kaitai/exceptions.h"

integers_t::integers_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, integers_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void integers_t::_read() {
    m_magic1 = m__io->read_bytes(6);
    if (!(m_magic1 == std::string("\x50\x41\x43\x4B\x2D\x31", 6))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x31", 6), m_magic1, m__io, std::string("/seq/0"));
    }
    m_uint8 = m__io->read_u1();
    m_sint8 = m__io->read_s1();
    m_magic_uint = m__io->read_bytes(10);
    if (!(m_magic_uint == std::string("\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46", 10))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46", 10), m_magic_uint, m__io, std::string("/seq/3"));
    }
    m_uint16 = m__io->read_u2le();
    m_uint32 = m__io->read_u4le();
    m_uint64 = m__io->read_u8le();
    m_magic_sint = m__io->read_bytes(10);
    if (!(m_magic_sint == std::string("\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46", 10))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46", 10), m_magic_sint, m__io, std::string("/seq/7"));
    }
    m_sint16 = m__io->read_s2le();
    m_sint32 = m__io->read_s4le();
    m_sint64 = m__io->read_s8le();
    m_magic_uint_le = m__io->read_bytes(9);
    if (!(m_magic_uint_le == std::string("\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45", 9))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45", 9), m_magic_uint_le, m__io, std::string("/seq/11"));
    }
    m_uint16le = m__io->read_u2le();
    m_uint32le = m__io->read_u4le();
    m_uint64le = m__io->read_u8le();
    m_magic_sint_le = m__io->read_bytes(9);
    if (!(m_magic_sint_le == std::string("\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45", 9))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45", 9), m_magic_sint_le, m__io, std::string("/seq/15"));
    }
    m_sint16le = m__io->read_s2le();
    m_sint32le = m__io->read_s4le();
    m_sint64le = m__io->read_s8le();
    m_magic_uint_be = m__io->read_bytes(9);
    if (!(m_magic_uint_be == std::string("\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45", 9))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45", 9), m_magic_uint_be, m__io, std::string("/seq/19"));
    }
    m_uint16be = m__io->read_u2be();
    m_uint32be = m__io->read_u4be();
    m_uint64be = m__io->read_u8be();
    m_magic_sint_be = m__io->read_bytes(9);
    if (!(m_magic_sint_be == std::string("\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45", 9))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45", 9), m_magic_sint_be, m__io, std::string("/seq/23"));
    }
    m_sint16be = m__io->read_s2be();
    m_sint32be = m__io->read_s4be();
    m_sint64be = m__io->read_s8be();
}

integers_t::~integers_t() {
    _clean_up();
}

void integers_t::_clean_up() {
}

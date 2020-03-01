// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "fixed_struct.h"
#include "kaitai/exceptions.h"

fixedStruct_t::fixedStruct_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, fixedStruct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_hdr = 0;
    f_hdr = false;
    _read();
}

void fixedStruct_t::_read() {
}

fixedStruct_t::~fixedStruct_t() {
    if (f_hdr) {
        delete m_hdr;
    }
}

fixedStruct_t::header_t::header_t(kaitai::kstream* p__io, fixedStruct_t* p__parent, fixedStruct_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void fixedStruct_t::header_t::_read() {
    m_magic1 = m__io->read_bytes(6);
    if (!(magic1() == std::string("\x50\x41\x43\x4B\x2D\x31", 6))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x31", 6), magic1(), _io(), std::string("/types/header/seq/0"));
    }
    m_uint8 = m__io->read_u1();
    m_sint8 = m__io->read_s1();
    m_magic_uint = m__io->read_bytes(10);
    if (!(magic_uint() == std::string("\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46", 10))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x55\x2D\x44\x45\x46", 10), magic_uint(), _io(), std::string("/types/header/seq/3"));
    }
    m_uint16 = m__io->read_u2le();
    m_uint32 = m__io->read_u4le();
    m_uint64 = m__io->read_u8le();
    m_magic_sint = m__io->read_bytes(10);
    if (!(magic_sint() == std::string("\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46", 10))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x53\x2D\x44\x45\x46", 10), magic_sint(), _io(), std::string("/types/header/seq/7"));
    }
    m_sint16 = m__io->read_s2le();
    m_sint32 = m__io->read_s4le();
    m_sint64 = m__io->read_s8le();
    m_magic_uint_le = m__io->read_bytes(9);
    if (!(magic_uint_le() == std::string("\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45", 9))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x55\x2D\x4C\x45", 9), magic_uint_le(), _io(), std::string("/types/header/seq/11"));
    }
    m_uint16le = m__io->read_u2le();
    m_uint32le = m__io->read_u4le();
    m_uint64le = m__io->read_u8le();
    m_magic_sint_le = m__io->read_bytes(9);
    if (!(magic_sint_le() == std::string("\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45", 9))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x53\x2D\x4C\x45", 9), magic_sint_le(), _io(), std::string("/types/header/seq/15"));
    }
    m_sint16le = m__io->read_s2le();
    m_sint32le = m__io->read_s4le();
    m_sint64le = m__io->read_s8le();
    m_magic_uint_be = m__io->read_bytes(9);
    if (!(magic_uint_be() == std::string("\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45", 9))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x55\x2D\x42\x45", 9), magic_uint_be(), _io(), std::string("/types/header/seq/19"));
    }
    m_uint16be = m__io->read_u2be();
    m_uint32be = m__io->read_u4be();
    m_uint64be = m__io->read_u8be();
    m_magic_sint_be = m__io->read_bytes(9);
    if (!(magic_sint_be() == std::string("\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45", 9))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x53\x2D\x42\x45", 9), magic_sint_be(), _io(), std::string("/types/header/seq/23"));
    }
    m_sint16be = m__io->read_s2be();
    m_sint32be = m__io->read_s4be();
    m_sint64be = m__io->read_s8be();
}

fixedStruct_t::header_t::~header_t() {
}

fixedStruct_t::header_t* fixedStruct_t::hdr() {
    if (f_hdr)
        return m_hdr;
    std::streampos _pos = m__io->pos();
    m__io->seek(0);
    m_hdr = new header_t(m__io, this, m__root);
    m__io->seek(_pos);
    f_hdr = true;
    return m_hdr;
}

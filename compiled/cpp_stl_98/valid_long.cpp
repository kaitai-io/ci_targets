// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "valid_long.h"
#include "kaitai/exceptions.h"

valid_long_t::valid_long_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_long_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void valid_long_t::_read() {
    m_magic1 = m__io->read_bytes(6);
    if (!(m_magic1 == std::string("\x50\x41\x43\x4B\x2D\x31", 6))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x50\x41\x43\x4B\x2D\x31", 6), m_magic1, m__io, std::string("/seq/0"));
    }
    m_uint8 = m__io->read_u1();
    if (!(m_uint8 == 255)) {
        throw kaitai::validation_not_equal_error<uint8_t>(255, m_uint8, m__io, std::string("/seq/1"));
    }
    m_sint8 = m__io->read_s1();
    if (!(m_sint8 == -1)) {
        throw kaitai::validation_not_equal_error<int8_t>(-1, m_sint8, m__io, std::string("/seq/2"));
    }
    m_magic_uint = kaitai::kstream::bytes_to_str(m__io->read_bytes(10), "UTF-8");
    if (!(m_magic_uint == std::string("PACK-U-DEF"))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("PACK-U-DEF"), m_magic_uint, m__io, std::string("/seq/3"));
    }
    m_uint16 = m__io->read_u2le();
    if (!(m_uint16 == 65535)) {
        throw kaitai::validation_not_equal_error<uint16_t>(65535, m_uint16, m__io, std::string("/seq/4"));
    }
    m_uint32 = m__io->read_u4le();
    if (!(m_uint32 == 4294967295UL)) {
        throw kaitai::validation_not_equal_error<uint32_t>(4294967295UL, m_uint32, m__io, std::string("/seq/5"));
    }
    m_uint64 = m__io->read_u8le();
    if (!(m_uint64 == 18446744073709551615ULL)) {
        throw kaitai::validation_not_equal_error<uint64_t>(18446744073709551615ULL, m_uint64, m__io, std::string("/seq/6"));
    }
    m_magic_sint = kaitai::kstream::bytes_to_str(m__io->read_bytes(10), "UTF-8");
    if (!(m_magic_sint == std::string("PACK-S-DEF"))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("PACK-S-DEF"), m_magic_sint, m__io, std::string("/seq/7"));
    }
    m_sint16 = m__io->read_s2le();
    if (!(m_sint16 == -1)) {
        throw kaitai::validation_not_equal_error<int16_t>(-1, m_sint16, m__io, std::string("/seq/8"));
    }
    m_sint32 = m__io->read_s4le();
    if (!(m_sint32 == -1)) {
        throw kaitai::validation_not_equal_error<int32_t>(-1, m_sint32, m__io, std::string("/seq/9"));
    }
    m_sint64 = m__io->read_s8le();
    if (!(m_sint64 == -1)) {
        throw kaitai::validation_not_equal_error<int64_t>(-1, m_sint64, m__io, std::string("/seq/10"));
    }
}

valid_long_t::~valid_long_t() {
    _clean_up();
}

void valid_long_t::_clean_up() {
}

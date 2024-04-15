// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "integers_double_overflow.h"

integers_double_overflow_t::integers_double_overflow_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, integers_double_overflow_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    f_unsigned_safe_max_be = false;
    f_unsigned_safe_max_le = false;
    f_unsigned_unsafe_pos_be = false;
    f_unsigned_unsafe_pos_le = false;
    _read();
}

void integers_double_overflow_t::_read() {
    m_signed_safe_min_be = m__io->read_s8be();
    m_signed_safe_min_le = m__io->read_s8le();
    m_signed_safe_max_be = m__io->read_s8be();
    m_signed_safe_max_le = m__io->read_s8le();
    m_signed_unsafe_neg_be = m__io->read_s8be();
    m_signed_unsafe_neg_le = m__io->read_s8le();
    m_signed_unsafe_pos_be = m__io->read_s8be();
    m_signed_unsafe_pos_le = m__io->read_s8le();
}

integers_double_overflow_t::~integers_double_overflow_t() {
    _clean_up();
}

void integers_double_overflow_t::_clean_up() {
    if (f_unsigned_safe_max_be) {
    }
    if (f_unsigned_safe_max_le) {
    }
    if (f_unsigned_unsafe_pos_be) {
    }
    if (f_unsigned_unsafe_pos_le) {
    }
}

uint64_t integers_double_overflow_t::unsigned_safe_max_be() {
    if (f_unsigned_safe_max_be)
        return m_unsigned_safe_max_be;
    std::streampos _pos = m__io->pos();
    m__io->seek(16);
    m_unsigned_safe_max_be = m__io->read_u8be();
    m__io->seek(_pos);
    f_unsigned_safe_max_be = true;
    return m_unsigned_safe_max_be;
}

uint64_t integers_double_overflow_t::unsigned_safe_max_le() {
    if (f_unsigned_safe_max_le)
        return m_unsigned_safe_max_le;
    std::streampos _pos = m__io->pos();
    m__io->seek(24);
    m_unsigned_safe_max_le = m__io->read_u8le();
    m__io->seek(_pos);
    f_unsigned_safe_max_le = true;
    return m_unsigned_safe_max_le;
}

uint64_t integers_double_overflow_t::unsigned_unsafe_pos_be() {
    if (f_unsigned_unsafe_pos_be)
        return m_unsigned_unsafe_pos_be;
    std::streampos _pos = m__io->pos();
    m__io->seek(48);
    m_unsigned_unsafe_pos_be = m__io->read_u8be();
    m__io->seek(_pos);
    f_unsigned_unsafe_pos_be = true;
    return m_unsigned_unsafe_pos_be;
}

uint64_t integers_double_overflow_t::unsigned_unsafe_pos_le() {
    if (f_unsigned_unsafe_pos_le)
        return m_unsigned_unsafe_pos_le;
    std::streampos _pos = m__io->pos();
    m__io->seek(56);
    m_unsigned_unsafe_pos_le = m__io->read_u8le();
    m__io->seek(_pos);
    f_unsigned_unsafe_pos_le = true;
    return m_unsigned_unsafe_pos_le;
}

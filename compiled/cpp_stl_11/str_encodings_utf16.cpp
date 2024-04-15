// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "str_encodings_utf16.h"

str_encodings_utf16_t::str_encodings_utf16_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, str_encodings_utf16_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_be_bom_removed = nullptr;
    m__io__raw_be_bom_removed = nullptr;
    m_le_bom_removed = nullptr;
    m__io__raw_le_bom_removed = nullptr;
    _read();
}

void str_encodings_utf16_t::_read() {
    m_len_be = m__io->read_u4le();
    m__raw_be_bom_removed = m__io->read_bytes(len_be());
    m__io__raw_be_bom_removed = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_be_bom_removed));
    m_be_bom_removed = std::unique_ptr<str_be_bom_removed_t>(new str_be_bom_removed_t(m__io__raw_be_bom_removed.get(), this, m__root));
    m_len_le = m__io->read_u4le();
    m__raw_le_bom_removed = m__io->read_bytes(len_le());
    m__io__raw_le_bom_removed = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_le_bom_removed));
    m_le_bom_removed = std::unique_ptr<str_le_bom_removed_t>(new str_le_bom_removed_t(m__io__raw_le_bom_removed.get(), this, m__root));
}

str_encodings_utf16_t::~str_encodings_utf16_t() {
    _clean_up();
}

void str_encodings_utf16_t::_clean_up() {
}

str_encodings_utf16_t::str_be_bom_removed_t::str_be_bom_removed_t(kaitai::kstream* p__io, str_encodings_utf16_t* p__parent, str_encodings_utf16_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void str_encodings_utf16_t::str_be_bom_removed_t::_read() {
    m_bom = m__io->read_u2be();
    m_str = kaitai::kstream::bytes_to_str(m__io->read_bytes_full(), "UTF-16BE");
}

str_encodings_utf16_t::str_be_bom_removed_t::~str_be_bom_removed_t() {
    _clean_up();
}

void str_encodings_utf16_t::str_be_bom_removed_t::_clean_up() {
}

str_encodings_utf16_t::str_le_bom_removed_t::str_le_bom_removed_t(kaitai::kstream* p__io, str_encodings_utf16_t* p__parent, str_encodings_utf16_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void str_encodings_utf16_t::str_le_bom_removed_t::_read() {
    m_bom = m__io->read_u2le();
    m_str = kaitai::kstream::bytes_to_str(m__io->read_bytes_full(), "UTF-16LE");
}

str_encodings_utf16_t::str_le_bom_removed_t::~str_le_bom_removed_t() {
    _clean_up();
}

void str_encodings_utf16_t::str_le_bom_removed_t::_clean_up() {
}

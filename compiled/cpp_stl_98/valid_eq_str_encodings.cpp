// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "valid_eq_str_encodings.h"
#include "kaitai/exceptions.h"

valid_eq_str_encodings_t::valid_eq_str_encodings_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_eq_str_encodings_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void valid_eq_str_encodings_t::_read() {
    m_len_of_1 = m__io->read_u2le();
    m_str1 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_1()), "ASCII");
    if (!(m_str1 == (std::string("Some ASCII")))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("Some ASCII"), m_str1, m__io, std::string("/seq/1"));
    }
    m_len_of_2 = m__io->read_u2le();
    m_str2 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_2()), "UTF-8");
    if (!(m_str2 == (std::string("\u3053\u3093\u306b\u3061\u306f")))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\u3053\u3093\u306b\u3061\u306f"), m_str2, m__io, std::string("/seq/3"));
    }
    m_len_of_3 = m__io->read_u2le();
    m_str3 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_3()), "Shift_JIS");
    if (!(m_str3 == (std::string("\u3053\u3093\u306b\u3061\u306f")))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\u3053\u3093\u306b\u3061\u306f"), m_str3, m__io, std::string("/seq/5"));
    }
    m_len_of_4 = m__io->read_u2le();
    m_str4 = kaitai::kstream::bytes_to_str(m__io->read_bytes(len_of_4()), "IBM437");
    if (!(m_str4 == (std::string("\u2591\u2592\u2593")))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\u2591\u2592\u2593"), m_str4, m__io, std::string("/seq/7"));
    }
}

valid_eq_str_encodings_t::~valid_eq_str_encodings_t() {
    _clean_up();
}

void valid_eq_str_encodings_t::_clean_up() {
}

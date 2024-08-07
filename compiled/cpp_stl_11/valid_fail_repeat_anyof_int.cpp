// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "valid_fail_repeat_anyof_int.h"
#include "kaitai/exceptions.h"

valid_fail_repeat_anyof_int_t::valid_fail_repeat_anyof_int_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_fail_repeat_anyof_int_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_foo = nullptr;
    _read();
}

void valid_fail_repeat_anyof_int_t::_read() {
    m_foo = std::unique_ptr<std::vector<uint8_t>>(new std::vector<uint8_t>());
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_foo->push_back(std::move(m__io->read_u1()));
            if (!( ((m_foo->at(i) == 0) || (m_foo->at(i) == 1) || (m_foo->at(i) == 65)) )) {
                throw kaitai::validation_not_any_of_error<uint8_t>(m_foo->at(i), m__io, std::string("/seq/0"));
            }
            i++;
        }
    }
}

valid_fail_repeat_anyof_int_t::~valid_fail_repeat_anyof_int_t() {
    _clean_up();
}

void valid_fail_repeat_anyof_int_t::_clean_up() {
}

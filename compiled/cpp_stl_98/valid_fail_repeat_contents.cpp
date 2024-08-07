// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "valid_fail_repeat_contents.h"
#include "kaitai/exceptions.h"

valid_fail_repeat_contents_t::valid_fail_repeat_contents_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, valid_fail_repeat_contents_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_foo = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void valid_fail_repeat_contents_t::_read() {
    m_foo = new std::vector<std::string>();
    {
        int i = 0;
        while (!m__io->is_eof()) {
            m_foo->push_back(m__io->read_bytes(4));
            if (!(m_foo->at(i) == std::string("\x12\x34\x56\x78", 4))) {
                throw kaitai::validation_not_equal_error<std::string>(std::string("\x12\x34\x56\x78", 4), m_foo->at(i), m__io, std::string("/seq/0"));
            }
            i++;
        }
    }
}

valid_fail_repeat_contents_t::~valid_fail_repeat_contents_t() {
    _clean_up();
}

void valid_fail_repeat_contents_t::_clean_up() {
    if (m_foo) {
        delete m_foo; m_foo = 0;
    }
}

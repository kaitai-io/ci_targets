// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include <memory>
#include "test.h"

test_t::test_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, test_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_seq_block = 0;
    _read();
}

void test_t::_read() {
    m_seq_block = new test_t::my_type(2)_t(m__io);
}

test_t::~test_t() {
    delete m_seq_block;
}

test_t::my_type_t::my_type_t(int32_t p_repeat_count, kaitai::kstream* p__io, kaitai::kstruct* p__parent, test_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_repeat_count = p_repeat_count;
    m_repeated_thing = 0;
    _read();
}

void test_t::my_type_t::_read() {
    m_world = m__io->read_s4be();
    int l_repeated_thing = repeat_count();
    m_repeated_thing = new std::vector<int32_t>();
    m_repeated_thing->reserve(l_repeated_thing);
    for (int i = 0; i < l_repeated_thing; i++) {
        m_repeated_thing->push_back(m__io->read_s4be());
    }
}

test_t::my_type_t::~my_type_t() {
    delete m_repeated_thing;
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "instance_io_user_earlier.h"

instance_io_user_earlier_t::instance_io_user_earlier_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, instance_io_user_earlier_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_sized_a = nullptr;
    m__io__raw_sized_a = nullptr;
    m_sized_b = nullptr;
    m__io__raw_sized_b = nullptr;
    m_into_b = nullptr;
    m_into_a_skipped = nullptr;
    m_into_a = nullptr;
    m_last_accessor = nullptr;
    f_a_mid = false;
    f_b_mid = false;
    _read();
}

void instance_io_user_earlier_t::_read() {
    m__raw_sized_a = m__io->read_bytes(6);
    m__io__raw_sized_a = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_sized_a));
    m_sized_a = std::unique_ptr<slot_t>(new slot_t(m__io__raw_sized_a.get(), this, m__root));
    m__raw_sized_b = m__io->read_bytes(6);
    m__io__raw_sized_b = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_sized_b));
    m_sized_b = std::unique_ptr<slot_t>(new slot_t(m__io__raw_sized_b.get(), this, m__root));
    m_into_b = std::unique_ptr<foo_t>(new foo_t(m__io, this, m__root));
    m_into_a_skipped = std::unique_ptr<foo_t>(new foo_t(m__io, this, m__root));
    m_into_a = std::unique_ptr<foo_t>(new foo_t(m__io, this, m__root));
    m_last_accessor = std::unique_ptr<baz_t>(new baz_t(m__io, this, m__root));
}

instance_io_user_earlier_t::~instance_io_user_earlier_t() {
    _clean_up();
}

void instance_io_user_earlier_t::_clean_up() {
    if (f_a_mid) {
    }
    if (f_b_mid) {
    }
}

instance_io_user_earlier_t::baz_t::baz_t(kaitai::kstream* p__io, instance_io_user_earlier_t* p__parent, instance_io_user_earlier_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void instance_io_user_earlier_t::baz_t::_read() {
    n_v = true;
    if (_parent()->into_b()->inst()->last() == 89) {
        n_v = false;
        m_v = m__io->read_u1();
    }
}

instance_io_user_earlier_t::baz_t::~baz_t() {
    _clean_up();
}

void instance_io_user_earlier_t::baz_t::_clean_up() {
    if (!n_v) {
    }
}

instance_io_user_earlier_t::foo_t::foo_t(kaitai::kstream* p__io, instance_io_user_earlier_t* p__parent, instance_io_user_earlier_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_inst = nullptr;
    m__io__raw_inst = nullptr;
    f_inst = false;
    _read();
}

void instance_io_user_earlier_t::foo_t::_read() {
    m_indicator = m__io->read_u1();
    n_bar = true;
    if ( ((inst()->_io()->size() != 0) && (inst()->content() == 102)) ) {
        n_bar = false;
        m_bar = m__io->read_u1();
    }
}

instance_io_user_earlier_t::foo_t::~foo_t() {
    _clean_up();
}

void instance_io_user_earlier_t::foo_t::_clean_up() {
    if (!n_bar) {
    }
    if (f_inst) {
    }
}

instance_io_user_earlier_t::slot_t* instance_io_user_earlier_t::foo_t::inst() {
    if (f_inst)
        return m_inst.get();
    f_inst = true;
    kaitai::kstream *io = ((indicator() == 202) ? (_parent()->sized_b()->_io()) : (_parent()->sized_a()->_io()));
    std::streampos _pos = io->pos();
    io->seek(1);
    m__raw_inst = io->read_bytes(((_io()->pos() != 14) ? (4) : (0)));
    m__io__raw_inst = std::unique_ptr<kaitai::kstream>(new kaitai::kstream(m__raw_inst));
    m_inst = std::unique_ptr<slot_t>(new slot_t(m__io__raw_inst.get(), this, m__root));
    io->seek(_pos);
    return m_inst.get();
}

instance_io_user_earlier_t::slot_t::slot_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, instance_io_user_earlier_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_last = false;
    _read();
}

void instance_io_user_earlier_t::slot_t::_read() {
    n_content = true;
    if (_io()->size() != 0) {
        n_content = false;
        m_content = m__io->read_u1();
    }
}

instance_io_user_earlier_t::slot_t::~slot_t() {
    _clean_up();
}

void instance_io_user_earlier_t::slot_t::_clean_up() {
    if (!n_content) {
    }
    if (f_last && !n_last) {
    }
}

uint8_t instance_io_user_earlier_t::slot_t::last() {
    if (f_last)
        return m_last;
    f_last = true;
    n_last = true;
    if (_io()->size() != 0) {
        n_last = false;
        std::streampos _pos = m__io->pos();
        m__io->seek(_io()->size() - 1);
        m_last = m__io->read_u1();
        m__io->seek(_pos);
    }
    return m_last;
}

uint16_t instance_io_user_earlier_t::a_mid() {
    if (f_a_mid)
        return m_a_mid;
    f_a_mid = true;
    kaitai::kstream *io = into_a()->inst()->_io();
    std::streampos _pos = io->pos();
    io->seek(1);
    m_a_mid = io->read_u2le();
    io->seek(_pos);
    return m_a_mid;
}

uint16_t instance_io_user_earlier_t::b_mid() {
    if (f_b_mid)
        return m_b_mid;
    f_b_mid = true;
    kaitai::kstream *io = into_b()->inst()->_io();
    std::streampos _pos = io->pos();
    io->seek(1);
    m_b_mid = io->read_u2le();
    io->seek(_pos);
    return m_b_mid;
}

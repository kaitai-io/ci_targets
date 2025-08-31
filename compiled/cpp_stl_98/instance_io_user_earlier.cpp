// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "instance_io_user_earlier.h"

instance_io_user_earlier_t::instance_io_user_earlier_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, instance_io_user_earlier_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root ? p__root : this;
    m_sized_a = 0;
    m__io__raw_sized_a = 0;
    m_sized_b = 0;
    m__io__raw_sized_b = 0;
    m_into_b = 0;
    m_into_a_skipped = 0;
    m_into_a = 0;
    m_last_accessor = 0;
    f_a_mid = false;
    f_b_mid = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void instance_io_user_earlier_t::_read() {
    m__raw_sized_a = m__io->read_bytes(6);
    m__io__raw_sized_a = new kaitai::kstream(m__raw_sized_a);
    m_sized_a = new slot_t(m__io__raw_sized_a, this, m__root);
    m__raw_sized_b = m__io->read_bytes(6);
    m__io__raw_sized_b = new kaitai::kstream(m__raw_sized_b);
    m_sized_b = new slot_t(m__io__raw_sized_b, this, m__root);
    m_into_b = new foo_t(m__io, this, m__root);
    m_into_a_skipped = new foo_t(m__io, this, m__root);
    m_into_a = new foo_t(m__io, this, m__root);
    m_last_accessor = new baz_t(m__io, this, m__root);
}

instance_io_user_earlier_t::~instance_io_user_earlier_t() {
    _clean_up();
}

void instance_io_user_earlier_t::_clean_up() {
    if (m__io__raw_sized_a) {
        delete m__io__raw_sized_a; m__io__raw_sized_a = 0;
    }
    if (m_sized_a) {
        delete m_sized_a; m_sized_a = 0;
    }
    if (m__io__raw_sized_b) {
        delete m__io__raw_sized_b; m__io__raw_sized_b = 0;
    }
    if (m_sized_b) {
        delete m_sized_b; m_sized_b = 0;
    }
    if (m_into_b) {
        delete m_into_b; m_into_b = 0;
    }
    if (m_into_a_skipped) {
        delete m_into_a_skipped; m_into_a_skipped = 0;
    }
    if (m_into_a) {
        delete m_into_a; m_into_a = 0;
    }
    if (m_last_accessor) {
        delete m_last_accessor; m_last_accessor = 0;
    }
    if (f_a_mid) {
    }
    if (f_b_mid) {
    }
}

instance_io_user_earlier_t::baz_t::baz_t(kaitai::kstream* p__io, instance_io_user_earlier_t* p__parent, instance_io_user_earlier_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
    m_inst = 0;
    m__io__raw_inst = 0;
    f_inst = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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
        if (m__io__raw_inst) {
            delete m__io__raw_inst; m__io__raw_inst = 0;
        }
        if (m_inst) {
            delete m_inst; m_inst = 0;
        }
    }
}

instance_io_user_earlier_t::slot_t* instance_io_user_earlier_t::foo_t::inst() {
    if (f_inst)
        return m_inst;
    f_inst = true;
    kaitai::kstream *io = ((indicator() == 202) ? (_parent()->sized_b()->_io()) : (_parent()->sized_a()->_io()));
    std::streampos _pos = io->pos();
    io->seek(1);
    m__raw_inst = io->read_bytes(((_io()->pos() != 14) ? (4) : (0)));
    m__io__raw_inst = new kaitai::kstream(m__raw_inst);
    m_inst = new slot_t(m__io__raw_inst, this, m__root);
    io->seek(_pos);
    return m_inst;
}

instance_io_user_earlier_t::slot_t::slot_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, instance_io_user_earlier_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    f_last = false;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

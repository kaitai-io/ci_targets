#ifndef INSTANCE_IO_USER_EARLIER_H_
#define INSTANCE_IO_USER_EARLIER_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class instance_io_user_earlier_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class instance_io_user_earlier_t : public kaitai::kstruct {

public:
    class baz_t;
    class foo_t;
    class slot_t;

    instance_io_user_earlier_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, instance_io_user_earlier_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~instance_io_user_earlier_t();

    class baz_t : public kaitai::kstruct {

    public:

        baz_t(kaitai::kstream* p__io, instance_io_user_earlier_t* p__parent = 0, instance_io_user_earlier_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~baz_t();

    private:
        uint8_t m_v;
        bool n_v;

    public:
        bool _is_null_v() { v(); return n_v; };

    private:
        instance_io_user_earlier_t* m__root;
        instance_io_user_earlier_t* m__parent;

    public:
        uint8_t v() const { return m_v; }
        instance_io_user_earlier_t* _root() const { return m__root; }
        instance_io_user_earlier_t* _parent() const { return m__parent; }
    };

    class foo_t : public kaitai::kstruct {

    public:

        foo_t(kaitai::kstream* p__io, instance_io_user_earlier_t* p__parent = 0, instance_io_user_earlier_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~foo_t();

    private:
        bool f_inst;
        slot_t* m_inst;

    public:
        slot_t* inst();

    private:
        uint8_t m_indicator;
        uint8_t m_bar;
        bool n_bar;

    public:
        bool _is_null_bar() { bar(); return n_bar; };

    private:
        instance_io_user_earlier_t* m__root;
        instance_io_user_earlier_t* m__parent;
        std::string m__raw_inst;
        kaitai::kstream* m__io__raw_inst;

    public:
        uint8_t indicator() const { return m_indicator; }
        uint8_t bar() const { return m_bar; }
        instance_io_user_earlier_t* _root() const { return m__root; }
        instance_io_user_earlier_t* _parent() const { return m__parent; }
        std::string _raw_inst() const { return m__raw_inst; }
        kaitai::kstream* _io__raw_inst() const { return m__io__raw_inst; }
    };

    class slot_t : public kaitai::kstruct {

    public:

        slot_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, instance_io_user_earlier_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~slot_t();

    private:
        bool f_last;
        uint8_t m_last;
        bool n_last;

    public:
        bool _is_null_last() { last(); return n_last; };

    private:

    public:
        uint8_t last();

    private:
        uint8_t m_content;
        bool n_content;

    public:
        bool _is_null_content() { content(); return n_content; };

    private:
        instance_io_user_earlier_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        uint8_t content() const { return m_content; }
        instance_io_user_earlier_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

private:
    bool f_a_mid;
    uint16_t m_a_mid;

public:
    uint16_t a_mid();

private:
    bool f_b_mid;
    uint16_t m_b_mid;

public:
    uint16_t b_mid();

private:
    slot_t* m_sized_a;
    slot_t* m_sized_b;
    foo_t* m_into_b;
    foo_t* m_into_a_skipped;
    foo_t* m_into_a;
    baz_t* m_last_accessor;
    instance_io_user_earlier_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_sized_a;
    kaitai::kstream* m__io__raw_sized_a;
    std::string m__raw_sized_b;
    kaitai::kstream* m__io__raw_sized_b;

public:
    slot_t* sized_a() const { return m_sized_a; }
    slot_t* sized_b() const { return m_sized_b; }
    foo_t* into_b() const { return m_into_b; }
    foo_t* into_a_skipped() const { return m_into_a_skipped; }
    foo_t* into_a() const { return m_into_a; }
    baz_t* last_accessor() const { return m_last_accessor; }
    instance_io_user_earlier_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_sized_a() const { return m__raw_sized_a; }
    kaitai::kstream* _io__raw_sized_a() const { return m__io__raw_sized_a; }
    std::string _raw_sized_b() const { return m__raw_sized_b; }
    kaitai::kstream* _io__raw_sized_b() const { return m__io__raw_sized_b; }
};

#endif  // INSTANCE_IO_USER_EARLIER_H_

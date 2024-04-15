#ifndef NAV_PARENT_SWITCH_CAST_H_
#define NAV_PARENT_SWITCH_CAST_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class nav_parent_switch_cast_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class nav_parent_switch_cast_t : public kaitai::kstruct {

public:
    class foo_t;

    nav_parent_switch_cast_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nav_parent_switch_cast_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~nav_parent_switch_cast_t();

    class foo_t : public kaitai::kstruct {

    public:
        class common_t;
        class one_t;
        class zero_t;

        foo_t(kaitai::kstream* p__io, nav_parent_switch_cast_t* p__parent = 0, nav_parent_switch_cast_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~foo_t();

        class common_t : public kaitai::kstruct {

        public:

            common_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nav_parent_switch_cast_t* p__root = 0);

        private:
            void _read();
            void _clean_up();

        public:
            ~common_t();

        private:
            bool f_flag;
            uint8_t m_flag;

        public:
            uint8_t flag();

        private:
            nav_parent_switch_cast_t* m__root;
            kaitai::kstruct* m__parent;

        public:
            nav_parent_switch_cast_t* _root() const { return m__root; }
            kaitai::kstruct* _parent() const { return m__parent; }
        };

        class one_t : public kaitai::kstruct {

        public:

            one_t(kaitai::kstream* p__io, nav_parent_switch_cast_t::foo_t* p__parent = 0, nav_parent_switch_cast_t* p__root = 0);

        private:
            void _read();
            void _clean_up();

        public:
            ~one_t();

        private:
            common_t* m_branch;
            nav_parent_switch_cast_t* m__root;
            nav_parent_switch_cast_t::foo_t* m__parent;

        public:
            common_t* branch() const { return m_branch; }
            nav_parent_switch_cast_t* _root() const { return m__root; }
            nav_parent_switch_cast_t::foo_t* _parent() const { return m__parent; }
        };

        class zero_t : public kaitai::kstruct {

        public:

            zero_t(kaitai::kstream* p__io, nav_parent_switch_cast_t::foo_t* p__parent = 0, nav_parent_switch_cast_t* p__root = 0);

        private:
            void _read();
            void _clean_up();

        public:
            ~zero_t();

        private:
            common_t* m_branch;
            nav_parent_switch_cast_t* m__root;
            nav_parent_switch_cast_t::foo_t* m__parent;

        public:
            common_t* branch() const { return m_branch; }
            nav_parent_switch_cast_t* _root() const { return m__root; }
            nav_parent_switch_cast_t::foo_t* _parent() const { return m__parent; }
        };

    private:
        uint8_t m_buf_type;
        uint8_t m_flag;
        kaitai::kstruct* m_buf;
        bool n_buf;

    public:
        bool _is_null_buf() { buf(); return n_buf; };

    private:
        nav_parent_switch_cast_t* m__root;
        nav_parent_switch_cast_t* m__parent;
        std::string m__raw_buf;
        kaitai::kstream* m__io__raw_buf;

    public:
        uint8_t buf_type() const { return m_buf_type; }
        uint8_t flag() const { return m_flag; }
        kaitai::kstruct* buf() const { return m_buf; }
        nav_parent_switch_cast_t* _root() const { return m__root; }
        nav_parent_switch_cast_t* _parent() const { return m__parent; }
        std::string _raw_buf() const { return m__raw_buf; }
        kaitai::kstream* _io__raw_buf() const { return m__io__raw_buf; }
    };

private:
    foo_t* m_main;
    nav_parent_switch_cast_t* m__root;
    kaitai::kstruct* m__parent;

public:
    foo_t* main() const { return m_main; }
    nav_parent_switch_cast_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // NAV_PARENT_SWITCH_CAST_H_

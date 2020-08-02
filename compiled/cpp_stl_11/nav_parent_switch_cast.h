#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class nav_parent_switch_cast_t : public kaitai::kstruct {

public:
    class foo_t;

    nav_parent_switch_cast_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nav_parent_switch_cast_t* p__root = nullptr);

private:
    void _read();

public:
    ~nav_parent_switch_cast_t();
    void _clean_up();

    class foo_t : public kaitai::kstruct {

    public:
        class zero_t;
        class one_t;
        class common_t;

        foo_t(kaitai::kstream* p__io, nav_parent_switch_cast_t* p__parent = nullptr, nav_parent_switch_cast_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~foo_t();
        void _clean_up();

        class zero_t : public kaitai::kstruct {

        public:

            zero_t(kaitai::kstream* p__io, nav_parent_switch_cast_t::foo_t* p__parent = nullptr, nav_parent_switch_cast_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~zero_t();
            void _clean_up();

        private:
            std::unique_ptr<common_t> m_branch;
            nav_parent_switch_cast_t* m__root;
            nav_parent_switch_cast_t::foo_t* m__parent;

        public:
            common_t* branch() const { return m_branch.get(); }
            nav_parent_switch_cast_t* _root() const { return m__root; }
            nav_parent_switch_cast_t::foo_t* _parent() const { return m__parent; }
        };

        class one_t : public kaitai::kstruct {

        public:

            one_t(kaitai::kstream* p__io, nav_parent_switch_cast_t::foo_t* p__parent = nullptr, nav_parent_switch_cast_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~one_t();
            void _clean_up();

        private:
            std::unique_ptr<common_t> m_branch;
            nav_parent_switch_cast_t* m__root;
            nav_parent_switch_cast_t::foo_t* m__parent;

        public:
            common_t* branch() const { return m_branch.get(); }
            nav_parent_switch_cast_t* _root() const { return m__root; }
            nav_parent_switch_cast_t::foo_t* _parent() const { return m__parent; }
        };

        class common_t : public kaitai::kstruct {

        public:

            common_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, nav_parent_switch_cast_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~common_t();
            void _clean_up();

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

    private:
        uint8_t m_buf_type;
        uint8_t m_flag;
        std::unique_ptr<kaitai::kstruct> m_buf;
        bool n_buf;

    public:
        bool _is_null_buf() { buf(); return n_buf; };

    private:
        nav_parent_switch_cast_t* m__root;
        nav_parent_switch_cast_t* m__parent;
        std::string m__raw_buf;
        std::unique_ptr<kaitai::kstream> m__io__raw_buf;

    public:
        uint8_t buf_type() const { return m_buf_type; }
        uint8_t flag() const { return m_flag; }
        kaitai::kstruct* buf() const { return m_buf.get(); }
        nav_parent_switch_cast_t* _root() const { return m__root; }
        nav_parent_switch_cast_t* _parent() const { return m__parent; }
        std::string _raw_buf() const { return m__raw_buf; }
        kaitai::kstream* _io__raw_buf() const { return m__io__raw_buf.get(); }
    };

private:
    std::unique_ptr<foo_t> m_main;
    nav_parent_switch_cast_t* m__root;
    kaitai::kstruct* m__parent;

public:
    foo_t* main() const { return m_main.get(); }
    nav_parent_switch_cast_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

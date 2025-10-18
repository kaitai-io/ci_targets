#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class instance_in_sized_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class instance_in_sized_t : public kaitai::kstruct {

public:
    class bar_t;
    class baz_t;
    class qux_t;
    class wrapper_t;

    instance_in_sized_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, instance_in_sized_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~instance_in_sized_t();

    class bar_t : public kaitai::kstruct {

    public:

        bar_t(kaitai::kstream* p__io, instance_in_sized_t::wrapper_t* p__parent = nullptr, instance_in_sized_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~bar_t();
        std::string inst();
        uint8_t seq_f() const { return m_seq_f; }
        instance_in_sized_t* _root() const { return m__root; }
        instance_in_sized_t::wrapper_t* _parent() const { return m__parent; }

    private:
        bool f_inst;
        std::string m_inst;
        uint8_t m_seq_f;
        instance_in_sized_t* m__root;
        instance_in_sized_t::wrapper_t* m__parent;
    };

    class baz_t : public kaitai::kstruct {

    public:

        baz_t(kaitai::kstream* p__io, instance_in_sized_t::wrapper_t* p__parent = nullptr, instance_in_sized_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~baz_t();
        std::string inst();
        uint8_t seq_f() const { return m_seq_f; }
        instance_in_sized_t* _root() const { return m__root; }
        instance_in_sized_t::wrapper_t* _parent() const { return m__parent; }

    private:
        bool f_inst;
        std::string m_inst;
        uint8_t m_seq_f;
        instance_in_sized_t* m__root;
        instance_in_sized_t::wrapper_t* m__parent;
    };

    class qux_t : public kaitai::kstruct {

    public:

        qux_t(kaitai::kstream* p__io, instance_in_sized_t::wrapper_t* p__parent = nullptr, instance_in_sized_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~qux_t();
        uint8_t inst_invoked();
        std::string inst_unused_by_seq();
        uint8_t seq_f() const { return m_seq_f; }
        instance_in_sized_t* _root() const { return m__root; }
        instance_in_sized_t::wrapper_t* _parent() const { return m__parent; }

    private:
        bool f_inst_invoked;
        uint8_t m_inst_invoked;
        bool f_inst_unused_by_seq;
        std::string m_inst_unused_by_seq;
        uint8_t m_seq_f;
        bool n_seq_f;

    public:
        bool _is_null_seq_f() { seq_f(); return n_seq_f; };

    private:
        instance_in_sized_t* m__root;
        instance_in_sized_t::wrapper_t* m__parent;
    };

    class wrapper_t : public kaitai::kstruct {

    public:

        wrapper_t(kaitai::kstream* p__io, instance_in_sized_t* p__parent = nullptr, instance_in_sized_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~wrapper_t();
        baz_t* inst_in_stream();
        qux_t* inst_sized();
        qux_t* seq_sized() const { return m_seq_sized.get(); }
        bar_t* seq_in_stream() const { return m_seq_in_stream.get(); }
        instance_in_sized_t* _root() const { return m__root; }
        instance_in_sized_t* _parent() const { return m__parent; }
        std::string _raw_seq_sized() const { return m__raw_seq_sized; }
        kaitai::kstream* _io__raw_seq_sized() const { return m__io__raw_seq_sized.get(); }
        std::string _raw_inst_sized() const { return m__raw_inst_sized; }
        kaitai::kstream* _io__raw_inst_sized() const { return m__io__raw_inst_sized.get(); }

    private:
        bool f_inst_in_stream;
        std::unique_ptr<baz_t> m_inst_in_stream;
        bool f_inst_sized;
        std::unique_ptr<qux_t> m_inst_sized;
        std::unique_ptr<qux_t> m_seq_sized;
        std::unique_ptr<bar_t> m_seq_in_stream;
        instance_in_sized_t* m__root;
        instance_in_sized_t* m__parent;
        std::string m__raw_seq_sized;
        std::unique_ptr<kaitai::kstream> m__io__raw_seq_sized;
        std::string m__raw_inst_sized;
        std::unique_ptr<kaitai::kstream> m__io__raw_inst_sized;
    };

public:
    wrapper_t* cont() const { return m_cont.get(); }
    instance_in_sized_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
    std::string _raw_cont() const { return m__raw_cont; }
    kaitai::kstream* _io__raw_cont() const { return m__io__raw_cont.get(); }

private:
    std::unique_ptr<wrapper_t> m_cont;
    instance_in_sized_t* m__root;
    kaitai::kstruct* m__parent;
    std::string m__raw_cont;
    std::unique_ptr<kaitai::kstream> m__io__raw_cont;
};

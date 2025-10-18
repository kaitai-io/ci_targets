#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

class switch_manual_int_size_eos_t;

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class switch_manual_int_size_eos_t : public kaitai::kstruct {

public:
    class chunk_t;
    class chunk_body_t;

    switch_manual_int_size_eos_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, switch_manual_int_size_eos_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~switch_manual_int_size_eos_t();

    class chunk_t : public kaitai::kstruct {

    public:

        chunk_t(kaitai::kstream* p__io, switch_manual_int_size_eos_t* p__parent = nullptr, switch_manual_int_size_eos_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~chunk_t();
        uint8_t code() const { return m_code; }
        uint32_t size() const { return m_size; }
        chunk_body_t* body() const { return m_body.get(); }
        switch_manual_int_size_eos_t* _root() const { return m__root; }
        switch_manual_int_size_eos_t* _parent() const { return m__parent; }
        std::string _raw_body() const { return m__raw_body; }
        kaitai::kstream* _io__raw_body() const { return m__io__raw_body.get(); }

    private:
        uint8_t m_code;
        uint32_t m_size;
        std::unique_ptr<chunk_body_t> m_body;
        switch_manual_int_size_eos_t* m__root;
        switch_manual_int_size_eos_t* m__parent;
        std::string m__raw_body;
        std::unique_ptr<kaitai::kstream> m__io__raw_body;
    };

    class chunk_body_t : public kaitai::kstruct {

    public:
        class chunk_dir_t;
        class chunk_meta_t;

        chunk_body_t(kaitai::kstream* p__io, switch_manual_int_size_eos_t::chunk_t* p__parent = nullptr, switch_manual_int_size_eos_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~chunk_body_t();

        class chunk_dir_t : public kaitai::kstruct {

        public:

            chunk_dir_t(kaitai::kstream* p__io, switch_manual_int_size_eos_t::chunk_body_t* p__parent = nullptr, switch_manual_int_size_eos_t* p__root = nullptr);

        private:
            void _read();
            void _clean_up();

        public:
            ~chunk_dir_t();
            std::vector<std::string>* entries() const { return m_entries.get(); }
            switch_manual_int_size_eos_t* _root() const { return m__root; }
            switch_manual_int_size_eos_t::chunk_body_t* _parent() const { return m__parent; }

        private:
            std::unique_ptr<std::vector<std::string>> m_entries;
            switch_manual_int_size_eos_t* m__root;
            switch_manual_int_size_eos_t::chunk_body_t* m__parent;
        };

        class chunk_meta_t : public kaitai::kstruct {

        public:

            chunk_meta_t(kaitai::kstream* p__io, switch_manual_int_size_eos_t::chunk_body_t* p__parent = nullptr, switch_manual_int_size_eos_t* p__root = nullptr);

        private:
            void _read();
            void _clean_up();

        public:
            ~chunk_meta_t();
            std::string title() const { return m_title; }
            std::string author() const { return m_author; }
            switch_manual_int_size_eos_t* _root() const { return m__root; }
            switch_manual_int_size_eos_t::chunk_body_t* _parent() const { return m__parent; }

        private:
            std::string m_title;
            std::string m_author;
            switch_manual_int_size_eos_t* m__root;
            switch_manual_int_size_eos_t::chunk_body_t* m__parent;
        };

    public:
        kaitai::kstruct* body() const { return m_body.get(); }
        switch_manual_int_size_eos_t* _root() const { return m__root; }
        switch_manual_int_size_eos_t::chunk_t* _parent() const { return m__parent; }
        std::string _raw_body() const { return m__raw_body; }
        kaitai::kstream* _io__raw_body() const { return m__io__raw_body.get(); }

    private:
        std::unique_ptr<kaitai::kstruct> m_body;
        bool n_body;

    public:
        bool _is_null_body() { body(); return n_body; };

    private:
        switch_manual_int_size_eos_t* m__root;
        switch_manual_int_size_eos_t::chunk_t* m__parent;
        std::string m__raw_body;
        std::unique_ptr<kaitai::kstream> m__io__raw_body;
    };

public:
    std::vector<std::unique_ptr<chunk_t>>* chunks() const { return m_chunks.get(); }
    switch_manual_int_size_eos_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }

private:
    std::unique_ptr<std::vector<std::unique_ptr<chunk_t>>> m_chunks;
    switch_manual_int_size_eos_t* m__root;
    kaitai::kstruct* m__parent;
};

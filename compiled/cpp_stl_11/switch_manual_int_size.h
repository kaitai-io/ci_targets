#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class switchManualIntSize_t : public kaitai::kstruct {

public:
    class chunk_t;

    switchManualIntSize_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, switchManualIntSize_t* p__root = nullptr);

private:
    void _read();

public:
    ~switchManualIntSize_t();

    class chunk_t : public kaitai::kstruct {

    public:
        class chunkMeta_t;
        class chunkDir_t;

        chunk_t(kaitai::kstream* p__io, switchManualIntSize_t* p__parent = nullptr, switchManualIntSize_t* p__root = nullptr);

    private:
        void _read();

    public:
        ~chunk_t();

        class chunkMeta_t : public kaitai::kstruct {

        public:

            chunkMeta_t(kaitai::kstream* p__io, switchManualIntSize_t::chunk_t* p__parent = nullptr, switchManualIntSize_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~chunkMeta_t();

        private:
            std::string m_title;
            std::string m_author;
            switchManualIntSize_t* m__root;
            switchManualIntSize_t::chunk_t* m__parent;

        public:
            std::string title() const { return m_title; }
            std::string author() const { return m_author; }
            switchManualIntSize_t* _root() const { return m__root; }
            switchManualIntSize_t::chunk_t* _parent() const { return m__parent; }
        };

        class chunkDir_t : public kaitai::kstruct {

        public:

            chunkDir_t(kaitai::kstream* p__io, switchManualIntSize_t::chunk_t* p__parent = nullptr, switchManualIntSize_t* p__root = nullptr);

        private:
            void _read();

        public:
            ~chunkDir_t();

        private:
            std::unique_ptr<std::vector<std::string>> m_entries;
            switchManualIntSize_t* m__root;
            switchManualIntSize_t::chunk_t* m__parent;

        public:
            std::vector<std::string>* entries() const { return m_entries.get(); }
            switchManualIntSize_t* _root() const { return m__root; }
            switchManualIntSize_t::chunk_t* _parent() const { return m__parent; }
        };

    private:
        uint8_t m_code;
        uint32_t m_size;
        std::unique_ptr<kaitai::kstruct> m_body;
        bool n_body;

    public:
        bool _is_null_body() { body(); return n_body; };

    private:
        switchManualIntSize_t* m__root;
        switchManualIntSize_t* m__parent;
        std::string m__raw_body;
        kaitai::kstream* m__io__raw_body;

    public:
        uint8_t code() const { return m_code; }
        uint32_t size() const { return m_size; }
        kaitai::kstruct* body() const { return m_body.get(); }
        switchManualIntSize_t* _root() const { return m__root; }
        switchManualIntSize_t* _parent() const { return m__parent; }
        std::string _raw_body() const { return m__raw_body; }
        kaitai::kstream* _io__raw_body() const { return m__io__raw_body; }
    };

private:
    std::unique_ptr<std::vector<std::unique_ptr<chunk_t>>> m_chunks;
    switchManualIntSize_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<std::unique_ptr<chunk_t>>* chunks() const { return m_chunks.get(); }
    switchManualIntSize_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

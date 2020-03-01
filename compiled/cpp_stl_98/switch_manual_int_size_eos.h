#ifndef SWITCH_MANUAL_INT_SIZE_EOS_H_
#define SWITCH_MANUAL_INT_SIZE_EOS_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class switchManualIntSizeEos_t : public kaitai::kstruct {

public:
    class chunk_t;
    class chunkBody_t;

    switchManualIntSizeEos_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, switchManualIntSizeEos_t* p__root = 0);

private:
    void _read();

public:
    ~switchManualIntSizeEos_t();

    class chunk_t : public kaitai::kstruct {

    public:

        chunk_t(kaitai::kstream* p__io, switchManualIntSizeEos_t* p__parent = 0, switchManualIntSizeEos_t* p__root = 0);

    private:
        void _read();

    public:
        ~chunk_t();

    private:
        uint8_t m_code;
        uint32_t m_size;
        chunkBody_t* m_body;
        switchManualIntSizeEos_t* m__root;
        switchManualIntSizeEos_t* m__parent;
        std::string m__raw_body;
        kaitai::kstream* m__io__raw_body;

    public:
        uint8_t code() const { return m_code; }
        uint32_t size() const { return m_size; }
        chunkBody_t* body() const { return m_body; }
        switchManualIntSizeEos_t* _root() const { return m__root; }
        switchManualIntSizeEos_t* _parent() const { return m__parent; }
        std::string _raw_body() const { return m__raw_body; }
        kaitai::kstream* _io__raw_body() const { return m__io__raw_body; }
    };

    class chunkBody_t : public kaitai::kstruct {

    public:
        class chunkMeta_t;
        class chunkDir_t;

        chunkBody_t(kaitai::kstream* p__io, switchManualIntSizeEos_t::chunk_t* p__parent = 0, switchManualIntSizeEos_t* p__root = 0);

    private:
        void _read();

    public:
        ~chunkBody_t();

        class chunkMeta_t : public kaitai::kstruct {

        public:

            chunkMeta_t(kaitai::kstream* p__io, switchManualIntSizeEos_t::chunkBody_t* p__parent = 0, switchManualIntSizeEos_t* p__root = 0);

        private:
            void _read();

        public:
            ~chunkMeta_t();

        private:
            std::string m_title;
            std::string m_author;
            switchManualIntSizeEos_t* m__root;
            switchManualIntSizeEos_t::chunkBody_t* m__parent;

        public:
            std::string title() const { return m_title; }
            std::string author() const { return m_author; }
            switchManualIntSizeEos_t* _root() const { return m__root; }
            switchManualIntSizeEos_t::chunkBody_t* _parent() const { return m__parent; }
        };

        class chunkDir_t : public kaitai::kstruct {

        public:

            chunkDir_t(kaitai::kstream* p__io, switchManualIntSizeEos_t::chunkBody_t* p__parent = 0, switchManualIntSizeEos_t* p__root = 0);

        private:
            void _read();

        public:
            ~chunkDir_t();

        private:
            std::vector<std::string>* m_entries;
            switchManualIntSizeEos_t* m__root;
            switchManualIntSizeEos_t::chunkBody_t* m__parent;

        public:
            std::vector<std::string>* entries() const { return m_entries; }
            switchManualIntSizeEos_t* _root() const { return m__root; }
            switchManualIntSizeEos_t::chunkBody_t* _parent() const { return m__parent; }
        };

    private:
        kaitai::kstruct* m_body;
        bool n_body;

    public:
        bool _is_null_body() { body(); return n_body; };

    private:
        switchManualIntSizeEos_t* m__root;
        switchManualIntSizeEos_t::chunk_t* m__parent;
        std::string m__raw_body;
        kaitai::kstream* m__io__raw_body;

    public:
        kaitai::kstruct* body() const { return m_body; }
        switchManualIntSizeEos_t* _root() const { return m__root; }
        switchManualIntSizeEos_t::chunk_t* _parent() const { return m__parent; }
        std::string _raw_body() const { return m__raw_body; }
        kaitai::kstream* _io__raw_body() const { return m__io__raw_body; }
    };

private:
    std::vector<chunk_t*>* m_chunks;
    switchManualIntSizeEos_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::vector<chunk_t*>* chunks() const { return m_chunks; }
    switchManualIntSizeEos_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // SWITCH_MANUAL_INT_SIZE_EOS_H_

#ifndef NAV_PARENT3_H_
#define NAV_PARENT3_H_

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <vector>

#if KAITAI_STRUCT_VERSION < 11000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.11 or later is required"
#endif

class nav_parent3_t : public kaitai::kstruct {

public:
    class tag_t;

    nav_parent3_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = 0, nav_parent3_t* p__root = 0);

private:
    void _read();
    void _clean_up();

public:
    ~nav_parent3_t();

    class tag_t : public kaitai::kstruct {

    public:
        class tag_char_t;

        tag_t(kaitai::kstream* p__io, nav_parent3_t* p__parent = 0, nav_parent3_t* p__root = 0);

    private:
        void _read();
        void _clean_up();

    public:
        ~tag_t();

        class tag_char_t : public kaitai::kstruct {

        public:

            tag_char_t(kaitai::kstream* p__io, nav_parent3_t::tag_t* p__parent = 0, nav_parent3_t* p__root = 0);

        private:
            void _read();
            void _clean_up();

        public:
            ~tag_char_t();

        private:
            std::string m_content;
            nav_parent3_t* m__root;
            nav_parent3_t::tag_t* m__parent;

        public:
            std::string content() const { return m_content; }
            nav_parent3_t* _root() const { return m__root; }
            nav_parent3_t::tag_t* _parent() const { return m__parent; }
        };

    private:
        bool f_tag_content;
        tag_char_t* m_tag_content;
        bool n_tag_content;

    public:
        bool _is_null_tag_content() { tag_content(); return n_tag_content; };

    private:

    public:
        tag_char_t* tag_content();

    private:
        std::string m_name;
        uint32_t m_ofs;
        uint32_t m_num_items;
        nav_parent3_t* m__root;
        nav_parent3_t* m__parent;

    public:
        std::string name() const { return m_name; }
        uint32_t ofs() const { return m_ofs; }
        uint32_t num_items() const { return m_num_items; }
        nav_parent3_t* _root() const { return m__root; }
        nav_parent3_t* _parent() const { return m__parent; }
    };

private:
    bool f_tags;
    std::vector<tag_t*>* m_tags;

public:
    std::vector<tag_t*>* tags();

private:
    uint32_t m_ofs_tags;
    uint32_t m_num_tags;
    nav_parent3_t* m__root;
    kaitai::kstruct* m__parent;

public:
    uint32_t ofs_tags() const { return m_ofs_tags; }
    uint32_t num_tags() const { return m_num_tags; }
    nav_parent3_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};

#endif  // NAV_PARENT3_H_

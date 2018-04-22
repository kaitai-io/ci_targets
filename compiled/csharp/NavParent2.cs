// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class NavParent2 : KaitaiStruct
    {
        public static NavParent2 FromFile(string fileName)
        {
            return new NavParent2(new KaitaiStream(fileName));
        }

        public NavParent2(KaitaiStream p__io, KaitaiStruct p__parent = null, NavParent2 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _ofsTags = m_io.ReadU4le();
            _numTags = m_io.ReadU4le();
            _tags = new List<Tag>((int) (NumTags));
            for (var i = 0; i < NumTags; i++)
            {
                _tags.Add(new Tag(m_io, this, m_root));
            }
        }
        public partial class Tag : KaitaiStruct
        {
            public static Tag FromFile(string fileName)
            {
                return new Tag(new KaitaiStream(fileName));
            }

            public Tag(KaitaiStream p__io, NavParent2 p__parent = null, NavParent2 p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_tagContent = false;
                _read();
            }
            private void _read()
            {
                _name = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(4));
                _ofs = m_io.ReadU4le();
                _numItems = m_io.ReadU4le();
            }
            public partial class TagChar : KaitaiStruct
            {
                public static TagChar FromFile(string fileName)
                {
                    return new TagChar(new KaitaiStream(fileName));
                }

                public TagChar(KaitaiStream p__io, NavParent2.Tag p__parent = null, NavParent2 p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _content = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(M_Parent.NumItems));
                }
                private string _content;
                private NavParent2 m_root;
                private NavParent2.Tag m_parent;
                public string Content { get { return _content; } }
                public NavParent2 M_Root { get { return m_root; } }
                public NavParent2.Tag M_Parent { get { return m_parent; } }
            }
            private bool f_tagContent;
            private TagChar _tagContent;
            public TagChar TagContent
            {
                get
                {
                    if (f_tagContent)
                        return _tagContent;
                    KaitaiStream io = M_Root.M_Io;
                    long _pos = io.Pos;
                    io.Seek(Ofs);
                    switch (Name) {
                    case "RAHC": {
                        _tagContent = new TagChar(io, this, m_root);
                        break;
                    }
                    }
                    io.Seek(_pos);
                    f_tagContent = true;
                    return _tagContent;
                }
            }
            private string _name;
            private uint _ofs;
            private uint _numItems;
            private NavParent2 m_root;
            private NavParent2 m_parent;
            public string Name { get { return _name; } }
            public uint Ofs { get { return _ofs; } }
            public uint NumItems { get { return _numItems; } }
            public NavParent2 M_Root { get { return m_root; } }
            public NavParent2 M_Parent { get { return m_parent; } }
        }
        private uint _ofsTags;
        private uint _numTags;
        private List<Tag> _tags;
        private NavParent2 m_root;
        private KaitaiStruct m_parent;
        public uint OfsTags { get { return _ofsTags; } }
        public uint NumTags { get { return _numTags; } }
        public List<Tag> Tags { get { return _tags; } }
        public NavParent2 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}

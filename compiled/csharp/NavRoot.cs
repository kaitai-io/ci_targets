// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class NavRoot : KaitaiStruct
    {
        public static NavRoot FromFile(string fileName)
        {
            return new NavRoot(new KaitaiStream(fileName));
        }

        public NavRoot(KaitaiStream p__io, KaitaiStruct p__parent = null, NavRoot p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _header = new HeaderObj(m_io, this, m_root);
            _index = new IndexObj(m_io, this, m_root);
        }
        public partial class Entry : KaitaiStruct
        {
            public static Entry FromFile(string fileName)
            {
                return new Entry(new KaitaiStream(fileName));
            }

            public Entry(KaitaiStream p__io, NavRoot.IndexObj p__parent = null, NavRoot p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _filename = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytes(M_Root.Header.FilenameLen));
            }
            public string Filename { get { return _filename; } }
            public NavRoot M_Root { get { return m_root; } }
            public NavRoot.IndexObj M_Parent { get { return m_parent; } }
            private string _filename;
            private NavRoot m_root;
            private NavRoot.IndexObj m_parent;
        }
        public partial class HeaderObj : KaitaiStruct
        {
            public static HeaderObj FromFile(string fileName)
            {
                return new HeaderObj(new KaitaiStream(fileName));
            }

            public HeaderObj(KaitaiStream p__io, NavRoot p__parent = null, NavRoot p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _qtyEntries = m_io.ReadU4le();
                _filenameLen = m_io.ReadU4le();
            }
            public uint QtyEntries { get { return _qtyEntries; } }
            public uint FilenameLen { get { return _filenameLen; } }
            public NavRoot M_Root { get { return m_root; } }
            public NavRoot M_Parent { get { return m_parent; } }
            private uint _qtyEntries;
            private uint _filenameLen;
            private NavRoot m_root;
            private NavRoot m_parent;
        }
        public partial class IndexObj : KaitaiStruct
        {
            public static IndexObj FromFile(string fileName)
            {
                return new IndexObj(new KaitaiStream(fileName));
            }

            public IndexObj(KaitaiStream p__io, NavRoot p__parent = null, NavRoot p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _magic = m_io.ReadBytes(4);
                _entries = new List<Entry>();
                for (var i = 0; i < M_Root.Header.QtyEntries; i++)
                {
                    _entries.Add(new Entry(m_io, this, m_root));
                }
            }
            public byte[] Magic { get { return _magic; } }
            public List<Entry> Entries { get { return _entries; } }
            public NavRoot M_Root { get { return m_root; } }
            public NavRoot M_Parent { get { return m_parent; } }
            private byte[] _magic;
            private List<Entry> _entries;
            private NavRoot m_root;
            private NavRoot m_parent;
        }
        public HeaderObj Header { get { return _header; } }
        public IndexObj Index { get { return _index; } }
        public NavRoot M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private HeaderObj _header;
        private IndexObj _index;
        private NavRoot m_root;
        private KaitaiStruct m_parent;
    }
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class NavParent : KaitaiStruct
    {
        public static NavParent FromFile(string fileName)
        {
            return new NavParent(new KaitaiStream(fileName));
        }

        public NavParent(KaitaiStream io, KaitaiStruct parent = null, NavParent root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _header = new HeaderObj(m_io, this, m_root);
            _index = new IndexObj(m_io, this, m_root);
        }
        public partial class HeaderObj : KaitaiStruct
        {
            public static HeaderObj FromFile(string fileName)
            {
                return new HeaderObj(new KaitaiStream(fileName));
            }

            public HeaderObj(KaitaiStream io, NavParent parent = null, NavParent root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _qtyEntries = m_io.ReadU4le();
                _filenameLen = m_io.ReadU4le();
            }
            private uint _qtyEntries;
            private uint _filenameLen;
            private NavParent m_root;
            private NavParent m_parent;
            public uint QtyEntries { get { return _qtyEntries; } }
            public uint FilenameLen { get { return _filenameLen; } }
            public NavParent M_Root { get { return m_root; } }
            public NavParent M_Parent { get { return m_parent; } }
        }
        public partial class IndexObj : KaitaiStruct
        {
            public static IndexObj FromFile(string fileName)
            {
                return new IndexObj(new KaitaiStream(fileName));
            }

            public IndexObj(KaitaiStream io, NavParent parent = null, NavParent root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _magic = m_io.ReadBytes(4);
                _entries = new List<Entry>((int) (M_Parent.Header.QtyEntries));
                for (var i = 0; i < M_Parent.Header.QtyEntries; i++) {
                    _entries.Add(new Entry(m_io, this, m_root));
                }
            }
            private byte[] _magic;
            private List<Entry> _entries;
            private NavParent m_root;
            private NavParent m_parent;
            public byte[] Magic { get { return _magic; } }
            public List<Entry> Entries { get { return _entries; } }
            public NavParent M_Root { get { return m_root; } }
            public NavParent M_Parent { get { return m_parent; } }
        }
        public partial class Entry : KaitaiStruct
        {
            public static Entry FromFile(string fileName)
            {
                return new Entry(new KaitaiStream(fileName));
            }

            public Entry(KaitaiStream io, NavParent.IndexObj parent = null, NavParent root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _filename = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytes(M_Parent.M_Parent.Header.FilenameLen));
            }
            private string _filename;
            private NavParent m_root;
            private NavParent.IndexObj m_parent;
            public string Filename { get { return _filename; } }
            public NavParent M_Root { get { return m_root; } }
            public NavParent.IndexObj M_Parent { get { return m_parent; } }
        }
        private HeaderObj _header;
        private IndexObj _index;
        private NavParent m_root;
        private KaitaiStruct m_parent;
        public HeaderObj Header { get { return _header; } }
        public IndexObj Index { get { return _index; } }
        public NavParent M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}

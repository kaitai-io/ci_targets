// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class InstanceUserArray : KaitaiStruct
    {
        public static InstanceUserArray FromFile(string fileName)
        {
            return new InstanceUserArray(new KaitaiStream(fileName));
        }

        public InstanceUserArray(KaitaiStream io, KaitaiStruct parent = null, InstanceUserArray root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            f_userEntries = false;
            _read();
        }
        private void _read() {
            _ofs = m_io.ReadU4le();
            _entrySize = m_io.ReadU4le();
            _qtyEntries = m_io.ReadU4le();
        }
        public partial class Entry : KaitaiStruct
        {
            public static Entry FromFile(string fileName)
            {
                return new Entry(new KaitaiStream(fileName));
            }

            public Entry(KaitaiStream io, InstanceUserArray parent = null, InstanceUserArray root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _word1 = m_io.ReadU2le();
                _word2 = m_io.ReadU2le();
            }
            private ushort _word1;
            private ushort _word2;
            private InstanceUserArray m_root;
            private InstanceUserArray m_parent;
            public ushort Word1 { get { return _word1; } }
            public ushort Word2 { get { return _word2; } }
            public InstanceUserArray M_Root { get { return m_root; } }
            public InstanceUserArray M_Parent { get { return m_parent; } }
        }
        private bool f_userEntries;
        private List<Entry> _userEntries;
        public List<Entry> UserEntries
        {
            get
            {
                if (f_userEntries)
                    return _userEntries;
                if (Ofs > 0) {
                    long _pos = m_io.Pos;
                    m_io.Seek(Ofs);
                    __raw_userEntries = new List<byte[]>((int) (QtyEntries));
                    _userEntries = new List<Entry>((int) (QtyEntries));
                    for (var i = 0; i < QtyEntries; i++) {
                        __raw_userEntries.Add(m_io.ReadBytes(EntrySize));
                        var io___raw_userEntries = new KaitaiStream(__raw_userEntries[__raw_userEntries.Count - 1]);
                        _userEntries.Add(new Entry(io___raw_userEntries, this, m_root));
                    }
                    m_io.Seek(_pos);
                }
                f_userEntries = true;
                return _userEntries;
            }
        }
        private uint _ofs;
        private uint _entrySize;
        private uint _qtyEntries;
        private InstanceUserArray m_root;
        private KaitaiStruct m_parent;
        private List<byte[]> __raw_userEntries;
        public uint Ofs { get { return _ofs; } }
        public uint EntrySize { get { return _entrySize; } }
        public uint QtyEntries { get { return _qtyEntries; } }
        public InstanceUserArray M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public List<byte[]> M_RawUserEntries { get { return __raw_userEntries; } }
    }
}
